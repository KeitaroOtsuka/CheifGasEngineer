class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.references :exam, null: false, foreign_key: true
      t.text :sentence
      t.integer :answer
      t.text :commentary

      t.timestamps
    end
  end
end
