class AddColumnToQuestion2 < ActiveRecord::Migration[6.1]
  def up
    add_column :questions, :sub_sentence2, :text
    add_column :questions, :sub_sentence3, :text
    add_column :questions, :sub_sentence4, :text
  end
end
