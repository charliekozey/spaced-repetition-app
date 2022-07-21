require "rails_helper"

RSpec.describe DecoratorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/decorators").to route_to("decorators#index")
    end

    it "routes to #show" do
      expect(get: "/decorators/1").to route_to("decorators#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/decorators").to route_to("decorators#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/decorators/1").to route_to("decorators#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/decorators/1").to route_to("decorators#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/decorators/1").to route_to("decorators#destroy", id: "1")
    end
  end
end
