class AddColumnToQuestion3 < ActiveRecord::Migration[6.1]
  def up
    add_column :questions, :sub_sentence5, :text
  end
end
