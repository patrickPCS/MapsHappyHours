require "rails_helper"

RSpec.describe CadastrosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cadastros").to route_to("cadastros#index")
    end

    it "routes to #new" do
      expect(:get => "/cadastros/new").to route_to("cadastros#new")
    end

    it "routes to #show" do
      expect(:get => "/cadastros/1").to route_to("cadastros#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cadastros/1/edit").to route_to("cadastros#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cadastros").to route_to("cadastros#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cadastros/1").to route_to("cadastros#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cadastros/1").to route_to("cadastros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cadastros/1").to route_to("cadastros#destroy", :id => "1")
    end

  end
end
