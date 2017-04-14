class School < Company
  has_many :courses, inverse_of: :school
end
