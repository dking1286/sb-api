FactoryGirl.define do
  factory :role do
    association :company, factory: :company
    name "MyString"
  end
end
