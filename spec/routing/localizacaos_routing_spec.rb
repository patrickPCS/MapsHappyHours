require "rails_helper"

RSpec.describe LocalizacaosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/localizacaos").to route_to("localizacaos#index")
    end

    it "routes to #new" do
      expect(:get => "/localizacaos/new").to route_to("localizacaos#new")
    end

    it "routes to #show" do
      expect(:get => "/localizacaos/1").to route_to("localizacaos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/localizacaos/1/edit").to route_to("localizacaos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/localizacaos").to route_to("localizacaos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/localizacaos/1").to route_to("localizacaos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/localizacaos/1").to route_to("localizacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/localizacaos/1").to route_to("localizacaos#destroy", :id => "1")
    end

  end
end
