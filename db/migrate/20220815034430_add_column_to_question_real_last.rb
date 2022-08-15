class AddColumnToQuestionRealLast < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :exception1, :text
    add_column :questions, :exception2, :text
    add_column :questions, :exception3, :text
    add_column :questions, :exception4, :text
    add_column :questions, :exception5, :text
    add_column :questions, :exception6, :text
  end
end
