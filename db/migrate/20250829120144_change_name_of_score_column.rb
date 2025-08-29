class ChangeNameOfScoreColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :scores, :content, :value
    change_column :scores, :value, :integer, using: "value::integer", default: 0
  end
end
