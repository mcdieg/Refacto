require 'rails_helper'

RSpec.describe "combattants/new", type: :view do
  before(:each) do
    assign(:combattant, Combattant.new(
      :nom => "MyString",
      :points_de_vie => 1,
      :points_d_attaque => 1
    ))
  end

  it "renders new combattant form" do
    render

    assert_select "form[action=?][method=?]", combattants_path, "post" do

      assert_select "input[name=?]", "combattant[nom]"

      assert_select "input[name=?]", "combattant[points_de_vie]"

      assert_select "input[name=?]", "combattant[points_d_attaque]"
    end
  end
end
