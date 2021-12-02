require 'rails_helper'

RSpec.describe "Planners", type: :request do
  describe "GET /main" do
    it "returns http success" do
      get "/planner/main"
      expect(response).to have_http_status(:success)
    end
  end

end
