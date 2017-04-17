require 'rails_helper'

RSpec.describe Api::V1::SkillsController, type: :controller do
  let!(:skills) { create_list(:skill, 5)}

  describe 'GET index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'assigns skills' do
      get :index
      expect(assigns(:skills)).to eq skills
    end

    context 'when filtering by regarding_type and regarding_id' do
      let!(:skill_association) { create(:skill_role_association) }

      it 'returns the correct skills' do
        get :index, params: { regarding_type: skill_association.regarding.class.name, regarding_id: skill_association.regarding_id }
        expect(assigns(:skills)).to eq [skill_association.skill]
      end
    end
  end
end
