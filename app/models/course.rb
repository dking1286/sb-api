class Course < ApplicationRecord
  belongs_to :school, inverse_of: :courses, foreign_key: :company_id

  validates :name, presence: true
  validates :url, presence: true
  validates :cost, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 99999 }
end
