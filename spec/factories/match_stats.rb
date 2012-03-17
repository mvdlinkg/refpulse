# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :match_stat do
    match_id 1
    foulLocal 1
    foulVisitor 1
    offsideLocal 1
    offsideVisitor 1
    yellowLocal 1
    yellowVisitor 1
    redLocal 1
    redVisitor 1
    penaltiesVisitor 1
    penaltiesLocal 1
  end
end
