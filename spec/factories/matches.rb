# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :match do
    visitor_id 1
    local_id 1
    referee_id 1
    stadium "MyString"
    date "2012-03-10 17:35:15"
  end
end
