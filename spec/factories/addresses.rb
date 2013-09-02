# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    agent_id 1
    postcode "MyString"
    address1 "MyText"
    address2 "MyText"
    address3 "MyText"
    town "MyString"
    county "MyString"
    country "MyString"
  end
end
