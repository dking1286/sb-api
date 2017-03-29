require 'rails_helper'

RSpec.describe SkillAssociation, type: :model do
  describe 'associations' do
    it { should belong_to(:skill) }
    it { should belong_to(:regarding) }
  end
end
