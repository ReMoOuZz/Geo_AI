class AddColumnsToChat < ActiveRecord::Migration[7.1]
  def change
    add_column :chats, :model_id, :string
  end
end
