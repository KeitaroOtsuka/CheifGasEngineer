class CreateResultQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :result_questions do |t|
      t.references :result, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.boolean :judge, null: false

      t.timestamps
    end
  end
end
