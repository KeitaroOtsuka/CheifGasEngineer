class RemoveSubSentence42FromQuestions < ActiveRecord::Migration[6.1]
  def change
    remove_column :questions, :sub_sentence4_2, :string
  end
end
