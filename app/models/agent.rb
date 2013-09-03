class Agent < ActiveRecord::Base
  has_many :addresses

  validates_presence_of :agent_no

  def default_address
    return unless self.default_address_id
    address = addresses.find self.default_address_id
    address.address1
  end

  def default_address=(address)
    update_attributes default_address_id: address.id
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
