require "rails_helper"

RSpec.describe CadastroFacebooksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cadastro_facebooks").to route_to("cadastro_facebooks#index")
    end

    it "routes to #new" do
      expect(:get => "/cadastro_facebooks/new").to route_to("cadastro_facebooks#new")
    end

    it "routes to #show" do
      expect(:get => "/cadastro_facebooks/1").to route_to("cadastro_facebooks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cadastro_facebooks/1/edit").to route_to("cadastro_facebooks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cadastro_facebooks").to route_to("cadastro_facebooks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cadastro_facebooks/1").to route_to("cadastro_facebooks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cadastro_facebooks/1").to route_to("cadastro_facebooks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cadastro_facebooks/1").to route_to("cadastro_facebooks#destroy", :id => "1")
    end

  end
end
