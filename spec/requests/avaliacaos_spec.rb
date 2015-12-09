require 'rails_helper'

RSpec.describe "Avaliacaos", type: :request do
  describe "GET /avaliacaos" do
    it "works! (now write some real specs)" do
      get avaliacaos_path
      expect(response).to have_http_status(200)
    end
  end
end
