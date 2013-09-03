require 'spec_helper'

describe Agent do
  it "should have a default address" do
    @agent = FactoryGirl.create(:agent)
    @agent.should respond_to(:default_address)
  end

  it "should allow to set a default address" do
    @agent = FactoryGirl.create(:agent)
    @address = FactoryGirl.create(:address, agent_id: @agent.id)
    @agent.default_address = @address
    @agent.default_address.should eql(@address.address1)
  end
end
