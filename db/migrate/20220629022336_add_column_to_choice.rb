class AddColumnToChoice < ActiveRecord::Migration[6.1]
  def up
    add_column :choices, :choice1, :integer
    add_column :choices, :choice2, :integer
    add_column :choices, :choice3, :integer
    add_column :choices, :choice4, :integer
    add_column :choices, :choice5, :integer
  end
end
