require "spec_helper"

describe RefereesController do
  describe "routing" do

    it "routes to #index" do
      get("/referees").should route_to("referees#index")
    end

    it "routes to #new" do
      get("/referees/new").should route_to("referees#new")
    end

    it "routes to #show" do
      get("/referees/1").should route_to("referees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/referees/1/edit").should route_to("referees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/referees").should route_to("referees#create")
    end

    it "routes to #update" do
      put("/referees/1").should route_to("referees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/referees/1").should route_to("referees#destroy", :id => "1")
    end

  end
end
