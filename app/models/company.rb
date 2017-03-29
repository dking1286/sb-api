class Company < ApplicationRecord
  has_many :roles, inverse_of: :company

  validates :name, presence: true
end
