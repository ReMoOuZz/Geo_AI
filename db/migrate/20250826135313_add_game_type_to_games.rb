class AddGameTypeToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :game_type, :string
  end
end
