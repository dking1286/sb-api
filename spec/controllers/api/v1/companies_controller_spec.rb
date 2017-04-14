require 'rails_helper'

RSpec.describe Api::V1::CompaniesController, type: :controller do

  describe 'GET index' do
  let!(:companies) { create_list(:company, 5) }

    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'assigns @companies' do
      get :index
      expect(assigns(:companies)).to eq companies
    end

    context 'when filtering with has_roles' do
      let!(:company_with_role) { create(:company) }
      let!(:role) { create(:role, company: company_with_role)}

      it 'only returns companies with roles' do
        get :index, params: { has_roles: true }
        expect(assigns(:companies)).to eq [company_with_role]
      end
    end
  end
end
