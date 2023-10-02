require 'rails_helper'

RSpec.describe "physicians/show", type: :view do
  before(:each) do
    assign(:physician, Physician.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
