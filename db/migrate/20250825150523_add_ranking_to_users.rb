class AddRankingToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :ranking, :integer
  end
end
