class CreateQuizzes < ActiveRecord::Migration[7.1]
  def change
    create_table :quizzes do |t|
      t.text :module
      t.text :content
      t.integer :score
      t.text :system_prompt

      t.timestamps
    end
  end
end
