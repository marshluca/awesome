class Agent < ActiveRecord::Base
  has_many :addresses

  attr_accessor :default_address

  validates_presence_of :agent_no
end
