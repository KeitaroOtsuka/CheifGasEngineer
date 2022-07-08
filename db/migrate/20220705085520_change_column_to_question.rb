class ChangeColumnToQuestion < ActiveRecord::Migration[6.1]
  def up
    change_column :choices, :choice1, :integer
    change_column :choices, :choice2, :integer
    change_column :choices, :choice3, :integer
    change_column :choices, :choice4, :integer
    change_column :choices, :choice5, :integer
  end

  def down
    change_column :choices, :choice1, :float
    change_column :choices, :choice2, :float
    change_column :choices, :choice3, :float
    change_column :choices, :choice4, :float
    change_column :choices, :choice5, :float
  end
end
