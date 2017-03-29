class Role < ApplicationRecord
  belongs_to :company

  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :company_id }
end
