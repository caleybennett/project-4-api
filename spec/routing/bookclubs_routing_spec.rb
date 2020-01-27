require "rails_helper"

RSpec.describe BookclubsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bookclubs").to route_to("bookclubs#index")
    end


    it "routes to #show" do
      expect(:get => "/bookclubs/1").to route_to("bookclubs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bookclubs").to route_to("bookclubs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bookclubs/1").to route_to("bookclubs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bookclubs/1").to route_to("bookclubs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bookclubs/1").to route_to("bookclubs#destroy", :id => "1")
    end

  end
end
