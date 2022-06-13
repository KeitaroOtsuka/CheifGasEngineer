class AddCulumnToGroups < ActiveRecord::Migration[6.1]
  def up
    add_column :groups, :owner_id, :integer, null: false
  end
end
