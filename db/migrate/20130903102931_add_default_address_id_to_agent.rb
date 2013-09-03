class AddDefaultAddressIdToAgent < ActiveRecord::Migration
  def change
    add_column :agents, :default_address_id, :integer
  end
end
