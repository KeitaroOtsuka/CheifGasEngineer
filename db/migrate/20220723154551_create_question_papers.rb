class CreateQuestionPapers < ActiveRecord::Migration[6.1]
  def change
    create_table :question_papers do |t|
      t.references :paper, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.integer :choice_number
      t.boolean :judge

      t.timestamps
    end
  end
end
