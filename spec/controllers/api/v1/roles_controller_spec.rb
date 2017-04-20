require 'rails_helper'

RSpec.describe Api::V1::RolesController, type: :controller do
  describe 'GET show' do
    let!(:role) { create(:role) }

    it 'returns http success' do
      get :show, params: { id: role.id }
      expect(response).to have_http_status(:success)
    end

    it 'assigns role' do
      get :show, params: { id: role.id }
      expect(assigns(:role)).to eq role
    end
  end
end
