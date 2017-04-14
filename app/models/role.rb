class Role < ApplicationRecord
  belongs_to :company

  has_many :skill_associations,  as: :regarding, dependent: :destroy
  has_many :skills, through: :skill_associations, inverse_of: :roles

  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :company_id }
end
