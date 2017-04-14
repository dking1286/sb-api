class Company < ApplicationRecord
  before_validation :set_param, on: :create

  has_many :roles, inverse_of: :company

  validates :name, presence: true
  validates_uniqueness_of :param

  scope :with_roles, -> { joins(:roles) }

  private

  def set_param
    self.param = name.try(:parameterize)
  end
end
