class AddColumnToChoices < ActiveRecord::Migration[6.1]
  def up
    change_column :choices, :choice1, :float
    change_column :choices, :choice2, :float
    change_column :choices, :choice3, :float
    change_column :choices, :choice4, :float
    change_column :choices, :choice5, :float
  end

  def down
    change_column :choices, :choice1
    change_column :choices, :choice2
    change_column :choices, :choice3
    change_column :choices, :choice4
    change_column :choices, :choice5
  end
end
