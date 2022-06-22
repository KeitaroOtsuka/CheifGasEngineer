class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.references :question, null: false, foreign_key: true
      t.integer :choice1, :choice2, :choice3, :choice4, :choice5

      t.timestamps
    end
  end
end
