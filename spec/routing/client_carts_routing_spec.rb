require "rails_helper"

RSpec.describe ClientCartsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/client_carts").to route_to("client_carts#index")
    end

    it "routes to #show" do
      expect(get: "/client_carts/1").to route_to("client_carts#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/client_carts").to route_to("client_carts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/client_carts/1").to route_to("client_carts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/client_carts/1").to route_to("client_carts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/client_carts/1").to route_to("client_carts#destroy", id: "1")
    end
  end
end
