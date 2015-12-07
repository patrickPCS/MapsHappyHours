require 'rails_helper'

RSpec.describe "Cadastros", type: :request do
  describe "GET /cadastros" do
    it "works! (now write some real specs)" do
      get cadastros_path
      expect(response).to have_http_status(200)
    end
  end
end
