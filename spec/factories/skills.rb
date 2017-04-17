FactoryGirl.define do
  factory :skill do
    sequence(:name) { |n| "MySkill-#{n}" }
  end
end
