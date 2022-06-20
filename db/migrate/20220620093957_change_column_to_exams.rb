class ChangeColumnToExams < ActiveRecord::Migration[6.1]
  def up
    change_column :exams, :exam_type, :integer, default: 0, null: false
  end
  def down
    change_column :exams, :exam_type, :integer, null: false
  end
end
