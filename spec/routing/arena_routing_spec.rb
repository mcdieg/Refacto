require "rails_helper"

RSpec.describe ArenaController, type: :routing do
  describe "routing" do
    it "routes to #game" do
      #expect(:game => "/combattants/game").to route_to("combattants#game")
      expect(:get => "/arena/game").to route_to("arena#game")
    end

  end
end
