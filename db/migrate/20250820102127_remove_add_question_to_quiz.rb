class RemoveAddQuestionToQuiz < ActiveRecord::Migration[7.1]
  def change
    remove_column :quizzes, :messages
  end
end
