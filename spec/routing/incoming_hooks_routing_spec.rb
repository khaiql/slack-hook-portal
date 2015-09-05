require "rails_helper"

RSpec.describe IncomingHooksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/incoming_hooks").to route_to("incoming_hooks#index")
    end

    it "routes to #new" do
      expect(:get => "/incoming_hooks/new").to route_to("incoming_hooks#new")
    end

    it "routes to #show" do
      expect(:get => "/incoming_hooks/1").to route_to("incoming_hooks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/incoming_hooks/1/edit").to route_to("incoming_hooks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/incoming_hooks").to route_to("incoming_hooks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/incoming_hooks/1").to route_to("incoming_hooks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/incoming_hooks/1").to route_to("incoming_hooks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/incoming_hooks/1").to route_to("incoming_hooks#destroy", :id => "1")
    end

  end
end
