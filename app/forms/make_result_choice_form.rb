class MakeResultChoiceForm
  include Virtus.model
  include ActiveModel::Model

  attr_accessor :result_id, :choice_id, :judge

  def save
    if current_user.
    result_choice = ResultChoice.create(result_id: ,chioce_id: ,judge:)
  end
end