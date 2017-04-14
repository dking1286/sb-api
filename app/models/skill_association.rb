class SkillAssociation < ApplicationRecord
  belongs_to :skill
  belongs_to :regarding, polymorphic: true
end
