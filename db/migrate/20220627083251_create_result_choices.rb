class CreateResultChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :result_choices do |t|
      t.references :result, null: false, foreign_key: true
      t.references :choice, null: false, foreign_key: true
      t.boolean :judge, default: false, null: false

      t.timestamps
    end
  end
end
