class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :first_name, presence: true, length: { maximum: 255 }
  validates :last_name, presence: true, length: { maximum: 255 }
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :reset_password_token, presence: true, uniqueness: true, allow_nil: true

  validates :email, uniqueness: true

  has_many :group_users, dependent: :destroy
  has_many :groups, through: :group_users, dependent: :destroy

  has_many :results, dependent: :destroy
  has_many :questions, through: :results, dependent: :destroy

  enum role: { non: 0, otsu: 1, kou: 2, admin: 3 }

  def own?(object)
    id == object.owner_id
    # binding.pry
  end

  def my_group?(object)
    current_user.groups.id == object.id
  end

  def deliver_reset_password_instructions!
    mail = false
    config = sorcery_config
    # hammering protection
    return false if config.reset_password_time_between_emails.present? && send(config.reset_password_email_sent_at_attribute_name) && send(config.reset_password_email_sent_at_attribute_name) > config.reset_password_time_between_emails.seconds.ago.utc
  
    self.class.sorcery_adapter.transaction do
      generate_reset_password_token!
      mail = send_reset_password_email! unless config.reset_password_mailer_disabled
    end
    mail
  end

  def load_from_reset_password_token(token, &block)
    load_from_token(
      token,
      @sorcery_config.reset_password_token_attribute_name,
      @sorcery_config.reset_password_token_expires_at_attribute_name,
      &block
    )
  end

  def change_password(new_password, raise_on_failure: false)
    clear_reset_password_token
    send(:"#{sorcery_config.password_attribute_name}=", new_password)
    sorcery_adapter.save raise_on_failure: raise_on_failure
  end
end
