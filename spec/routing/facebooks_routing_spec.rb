require "rails_helper"

RSpec.describe FacebooksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/facebooks").to route_to("facebooks#index")
    end

    it "routes to #new" do
      expect(:get => "/facebooks/new").to route_to("facebooks#new")
    end

    it "routes to #show" do
      expect(:get => "/facebooks/1").to route_to("facebooks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/facebooks/1/edit").to route_to("facebooks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/facebooks").to route_to("facebooks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/facebooks/1").to route_to("facebooks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/facebooks/1").to route_to("facebooks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/facebooks/1").to route_to("facebooks#destroy", :id => "1")
    end

  end
end
