require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:author) { create(:author) }

    it "returns http success" do
      get :show, id: author.id
      expect(response).to have_http_status(:success)
    end
  end
end
