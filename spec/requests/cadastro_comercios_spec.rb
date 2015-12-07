require 'rails_helper'

RSpec.describe "CadastroComercios", type: :request do
  describe "GET /cadastro_comercios" do
    it "works! (now write some real specs)" do
      get cadastro_comercios_path
      expect(response).to have_http_status(200)
    end
  end
end
