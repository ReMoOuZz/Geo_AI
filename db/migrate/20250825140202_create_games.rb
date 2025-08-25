class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :difficulty
      t.string :category
      t.string :region
      t.timestamps
    end
  end
end
