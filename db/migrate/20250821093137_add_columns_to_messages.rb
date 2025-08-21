class AddColumnsToMessages < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :model_id, :string
    add_reference :messages, :tool_call, foreign_key: true
  end
end
