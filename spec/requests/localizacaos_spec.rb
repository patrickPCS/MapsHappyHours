require 'rails_helper'

RSpec.describe "Localizacaos", type: :request do
  describe "GET /localizacaos" do
    it "works! (now write some real specs)" do
      get localizacaos_path
      expect(response).to have_http_status(200)
    end
  end
end
