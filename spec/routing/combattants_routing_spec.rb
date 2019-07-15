require "rails_helper"

RSpec.describe CombattantsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/combattants").to route_to("combattants#index")
    end

    it "routes to #new" do
      expect(:get => "/combattants/new").to route_to("combattants#new")
    end

    it "routes to #show" do
      expect(:get => "/combattants/1").to route_to("combattants#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/combattants/1/edit").to route_to("combattants#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/combattants").to route_to("combattants#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/combattants/1").to route_to("combattants#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/combattants/1").to route_to("combattants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/combattants/1").to route_to("combattants#destroy", :id => "1")
    end

  
  end
end
