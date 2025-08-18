class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.text :content
      t.references :chat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
