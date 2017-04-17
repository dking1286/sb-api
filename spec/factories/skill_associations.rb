FactoryGirl.define do
  factory :skill_association do
    association :skill, factory: :skill
    regarding nil

    factory :skill_role_association do
      association :regarding, factory: :role
    end

    factory :skill_course_association do
      association :regarding, factory: :course
    end
  end
end
