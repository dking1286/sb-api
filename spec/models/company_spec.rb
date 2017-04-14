require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'associations' do
    it { should have_many(:roles) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }

    it 'validates uniquness of param' do
      company1 = build(:company, name: 'Same Name')
      expect(company1.valid?).to be true
      company1.save
      company2 = build(:company, name: 'Same Name')
      expect(company2.valid?).to be false
    end
  end

  describe "callbacks" do
    describe 'before_validation' do
      it 'calls set_param' do
        expect(subject).to receive(:set_param).once
        subject.valid?
      end
    end
  end

  describe 'scopes' do
    describe 'with_roles' do
      let!(:company_with_role) { create(:company) }
      let!(:company_without_role) { create(:company) }
      let!(:role) { create(:role, company: company_with_role) }

      it 'returns only companies with roles' do
        expect(Company.with_roles).to eq [company_with_role]
      end
    end
  end

  describe 'set_param' do
    let!(:company) { build(:company) }

    it 'sets param' do
      expect(company.param).to be_nil
      company.send(:set_param)
      expect(company.param).to eq company.name.parameterize
    end
  end
end
