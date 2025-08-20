class AddMessageToQuiz < ActiveRecord::Migration[7.1]
  def change
    add_column :quizzes, :messages, :text, array: true, default: []
  end
end
