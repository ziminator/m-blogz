require 'rails_helper'

RSpec.describe "Web::Microposts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/web/microposts/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/web/microposts/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/web/microposts/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/web/microposts/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
