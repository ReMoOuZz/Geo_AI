class AddContexteToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :questions, :contexte, :string
  end
end
