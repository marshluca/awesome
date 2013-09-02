class Agent < ActiveRecord::Base
  has_many :addresses

  attr_accessor :default_address
end
