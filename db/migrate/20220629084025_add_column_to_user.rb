class AddColumnToUser < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :role, :integer, default: 0, null: false
  end
  def down
    change_column :users, :role
  end
end
