require "rails_helper"

RSpec.describe PieceTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/piece_types").to route_to("piece_types#index")
    end

    it "routes to #show" do
      expect(get: "/piece_types/1").to route_to("piece_types#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/piece_types").to route_to("piece_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/piece_types/1").to route_to("piece_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/piece_types/1").to route_to("piece_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/piece_types/1").to route_to("piece_types#destroy", id: "1")
    end
  end
end
