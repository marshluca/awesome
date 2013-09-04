class AddIndexToAgentsAndAddresses < ActiveRecord::Migration
  def change
    add_index :agents,    :agent_no, :unique => true
    add_index :addresses, :agent_id
  end
end
