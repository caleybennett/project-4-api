require "rails_helper"

RSpec.describe BookclubMembersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bookclub_members").to route_to("bookclub_members#index")
    end


    it "routes to #show" do
      expect(:get => "/bookclub_members/1").to route_to("bookclub_members#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bookclub_members").to route_to("bookclub_members#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bookclub_members/1").to route_to("bookclub_members#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bookclub_members/1").to route_to("bookclub_members#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bookclub_members/1").to route_to("bookclub_members#destroy", :id => "1")
    end

  end
end
