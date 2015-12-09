require 'rails_helper'

RSpec.describe "Comercios", type: :request do
  describe "GET /comercios" do
    it "works! (now write some real specs)" do
      get comercios_path
      expect(response).to have_http_status(200)
    end
  end
end
