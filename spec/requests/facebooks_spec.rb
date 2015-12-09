require 'rails_helper'

RSpec.describe "Facebooks", type: :request do
  describe "GET /facebooks" do
    it "works! (now write some real specs)" do
      get facebooks_path
      expect(response).to have_http_status(200)
    end
  end
end
