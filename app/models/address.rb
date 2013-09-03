class Address < ActiveRecord::Base
  belongs_to :agent

  validates_presence_of :agent_id, :address1, :town, :county, :country
end
