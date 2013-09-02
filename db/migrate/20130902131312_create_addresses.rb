class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :agent_id, null: false
      t.string :postcode,               limit: 50
      t.string :town,      null: false, limit: 50
      t.string :county,    null: false, limit: 50
      t.string :country,   null: false, limit: 50
      t.text :address1,    null: false 
      t.text :address2
      t.text :address3

      t.timestamps
    end
  end
end
