class CreateExams < ActiveRecord::Migration[6.1]
  def change
    create_table :exams do |t|
      t.references :category, null: false, foreign_key: true
      t.references :year, null: false, foreign_key: true
      t.integer :exam_type, null: false
      t.string :title, null: false

      t.timestamps
    end
  end
end
