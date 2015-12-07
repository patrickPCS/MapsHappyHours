require 'rails_helper'

RSpec.describe "CadastroFacebooks", type: :request do
  describe "GET /cadastro_facebooks" do
    it "works! (now write some real specs)" do
      get cadastro_facebooks_path
      expect(response).to have_http_status(200)
    end
  end
end
