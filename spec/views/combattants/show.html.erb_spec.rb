require 'rails_helper'

RSpec.describe "combattants/show", type: :view do
  before(:each) do
    @combattant = assign(:combattant, Combattant.create!(
      :nom => "Nom",
      :points_de_vie => 88,
      :points_d_attaque => 18 
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/88/)
    expect(rendered).to match(/18/)
  end
end
