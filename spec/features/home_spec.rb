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
end
