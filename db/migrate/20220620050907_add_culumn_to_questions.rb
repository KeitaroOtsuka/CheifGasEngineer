class AddCulumnToQuestions < ActiveRecord::Migration[6.1]
  def up
    add_column :questions, :supplement1, :text
    add_column :questions, :supplement2, :text
    add_column :questions, :supplement3, :text
    add_column :questions, :supplement4, :text
  end
end
