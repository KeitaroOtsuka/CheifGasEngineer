class AddColumnToQuestions < ActiveRecord::Migration[6.1]
  def up
    add_column :questions, :supplement5, :text
  end
end
