require 'rails_helper'

RSpec.describe "Combattants", type: :request do
  describe "GET /combattants" do
    it "works! (now write some real specs)" do
      get combattants_path
      expect(response).to have_http_status(200)
    end
  end
end
