require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:book) { create(:book) }

    it "returns http success" do
      get :show, id: book.id
      expect(response).to have_http_status(:success)
    end
  end
end
