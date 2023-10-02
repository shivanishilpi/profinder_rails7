require "rails_helper"

RSpec.describe PationtsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pationts").to route_to("pationts#index")
    end

    it "routes to #new" do
      expect(get: "/pationts/new").to route_to("pationts#new")
    end

    it "routes to #show" do
      expect(get: "/pationts/1").to route_to("pationts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pationts/1/edit").to route_to("pationts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pationts").to route_to("pationts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pationts/1").to route_to("pationts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pationts/1").to route_to("pationts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pationts/1").to route_to("pationts#destroy", id: "1")
    end
  end
end
