class AddAgentIdToLikes < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :agent_id, :integer
  end
end
