require 'rails_helper'

RSpec.describe Role, type: :model do
  describe 'associations' do
    it { should belong_to(:company) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:company_id).case_insensitive }
  end
end
