class CreateGameQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :game_questions do |t|
      t.integer :order
      t.references :game, null: false, foreign_key: true
      t.text :content
      t.string :difficulty
      t.string :category
      t.string :region
      t.string :correct_answer
      t.text :incorrect_answers, default: [], array: true

      t.timestamps
    end
  end
end
