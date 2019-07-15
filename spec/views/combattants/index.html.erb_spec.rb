require 'rails_helper'

RSpec.describe "combattants/index", type: :view do
  before(:each) do
    assign(:combattants, [
      Combattant.create!(
        :nom => "Surfer d'Argent",
        :points_de_vie => 90,
        :points_d_attaque => 18 
      ),
      Combattant.create!(
        :nom => "Iron WoMan",
        :points_de_vie => 85,
        :points_d_attaque => 17 
      )
    ])
  end

  it "renders a list of combattants" do
    render
    assert_select "tr>td", :text => "Surfer d'Argent".to_s, :count => 1
    assert_select "tr>td", :text => 90.to_s, :count => 1
    assert_select "tr>td", :text => 85.to_s, :count => 1
  end
end
