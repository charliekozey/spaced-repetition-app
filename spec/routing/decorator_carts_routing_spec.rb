require "rails_helper"

RSpec.describe DecoratorCartsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/decorator_carts").to route_to("decorator_carts#index")
    end

    it "routes to #show" do
      expect(get: "/decorator_carts/1").to route_to("decorator_carts#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/decorator_carts").to route_to("decorator_carts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/decorator_carts/1").to route_to("decorator_carts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/decorator_carts/1").to route_to("decorator_carts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/decorator_carts/1").to route_to("decorator_carts#destroy", id: "1")
    end
  end
end
