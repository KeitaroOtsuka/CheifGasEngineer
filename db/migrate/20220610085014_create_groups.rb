class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.string :avatar

      t.timestamps
    end

    add_index :groups, :name, unique: true
  end
end
