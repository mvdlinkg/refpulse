# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vote do
    referee_id 1
    match_id 1
    user_id 1
    comment "MyString"
    rate 1.5
  end
end
