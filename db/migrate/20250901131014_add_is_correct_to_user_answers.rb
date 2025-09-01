class AddIsCorrectToUserAnswers < ActiveRecord::Migration[7.1]
  def change
    add_column :user_answers, :is_correct, :boolean
  end
end
