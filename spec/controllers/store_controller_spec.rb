require 'rails_helper'

RSpec.describe StoreController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #brand" do
    it "returns http success" do
      get :brand
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #device" do
    it "returns http success" do
      get :device
      expect(response).to have_http_status(:success)
    end
  end

end
