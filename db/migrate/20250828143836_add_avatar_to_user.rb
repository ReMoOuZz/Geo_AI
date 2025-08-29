class AddAvatarToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :avatar, :string
  end
end
