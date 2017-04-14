class Skill < ApplicationRecord
  has_many :skill_associations, inverse_of: :skill
  has_many :roles, through: :skill_associations, source: :regarding, source_type: 'Role', inverse_of: :skills
  has_many :courses, through: :skill_associations, source: :regarding, source_type: 'Course', inverse_of: :skills

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
