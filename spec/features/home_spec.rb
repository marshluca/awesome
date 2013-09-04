require 'spec_helper'

feature "Addresses" do

  background do
    @agent = FactoryGirl.create(:agent)
    @address = FactoryGirl.create(:address, agent_id: @agent.id)
  end

  scenario "user can see default address" do
    visit agents_path
    page.should have_content('Default address')
  end

  scenario "user can set default address" do
    visit agents_path
    click_link 'Address'
    current_url.should == agent_addresses_url(@agent)
    click_link 'Mark default'
    current_url.should == agents_url
    page.should have_content("Address was successfully marked as default.")
  end
end
