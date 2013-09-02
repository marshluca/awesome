require 'spec_helper'

describe Agent do
  it "should allow to set a default address" do
    @agent = FactoryGirl.create(:agent)
    @agent.default_address = "Agent's default address"
    @agent.default_address == "Agent's default address"
  end
end
