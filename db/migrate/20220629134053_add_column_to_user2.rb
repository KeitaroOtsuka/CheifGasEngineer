class AddColumnToUser2 < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :certification, :integer, default: 0, null: false
  end
end
