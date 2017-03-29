require 'rails_helper'

RSpec.describe Skill, type: :model do
  describe 'associations' do
    it { should have_many(:skill_associations) }
    it { should have_many(:roles).through(:skill_associations) }
    it { should have_many(:courses).through(:skill_associations) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
