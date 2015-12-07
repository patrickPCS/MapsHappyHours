require "rails_helper"

RSpec.describe CadastroComerciosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cadastro_comercios").to route_to("cadastro_comercios#index")
    end

    it "routes to #new" do
      expect(:get => "/cadastro_comercios/new").to route_to("cadastro_comercios#new")
    end

    it "routes to #show" do
      expect(:get => "/cadastro_comercios/1").to route_to("cadastro_comercios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cadastro_comercios/1/edit").to route_to("cadastro_comercios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cadastro_comercios").to route_to("cadastro_comercios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cadastro_comercios/1").to route_to("cadastro_comercios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cadastro_comercios/1").to route_to("cadastro_comercios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cadastro_comercios/1").to route_to("cadastro_comercios#destroy", :id => "1")
    end

  end
end
