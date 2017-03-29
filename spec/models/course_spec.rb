require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'associations' do
    it { should belong_to(:school) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:cost) }
    it { should validate_numericality_of(:cost).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(99999) }
  end
end
