class AddColumnToQuestionLast < ActiveRecord::Migration[6.1]
  def up
    add_column :questions, :sub_sentence4_2, :text
  end
end
