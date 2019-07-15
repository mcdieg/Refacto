require "rails_helper"

RSpec.describe "test we touch the home page" do
  it "touches the home page" do
    get '/'
    expect(page).to have_content "Bienvenue"
  end 
end
