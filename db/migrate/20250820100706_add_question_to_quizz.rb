class AddQuestionToQuizz < ActiveRecord::Migration[7.1]
  def change
    add_column :quizzes, :messages, :text, array: true, default: []
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
