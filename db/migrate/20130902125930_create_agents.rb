class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :agent_no,   limit: 50, null: false, unique: true
      t.string :first_name, limit: 50 
      t.string :last_name,  limit: 50

      t.timestamps
    end
  end
end
