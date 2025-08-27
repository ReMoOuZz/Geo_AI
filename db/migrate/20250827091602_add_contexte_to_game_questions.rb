class AddContexteToGameQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :game_questions, :contexte, :string
  end
end
