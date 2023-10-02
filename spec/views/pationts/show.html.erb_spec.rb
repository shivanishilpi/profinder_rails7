require 'rails_helper'

RSpec.describe "pationts/show", type: :view do
  before(:each) do
    assign(:pationt, Pationt.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
