class AddColumnToQuestion < ActiveRecord::Migration[6.1]
  def up
    add_column :questions, :sub_sentence, :text
  end
end
