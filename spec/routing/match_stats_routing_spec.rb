require "spec_helper"

describe MatchStatsController do
  describe "routing" do

    it "routes to #index" do
      get("/match_stats").should route_to("match_stats#index")
    end

    it "routes to #new" do
      get("/match_stats/new").should route_to("match_stats#new")
    end

    it "routes to #show" do
      get("/match_stats/1").should route_to("match_stats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/match_stats/1/edit").should route_to("match_stats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/match_stats").should route_to("match_stats#create")
    end

    it "routes to #update" do
      put("/match_stats/1").should route_to("match_stats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/match_stats/1").should route_to("match_stats#destroy", :id => "1")
    end

  end
end
