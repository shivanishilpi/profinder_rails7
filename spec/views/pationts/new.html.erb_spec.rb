require 'rails_helper'

RSpec.describe "pationts/new", type: :view do
  before(:each) do
    assign(:pationt, Pationt.new(
      name: "MyString"
    ))
  end

  it "renders new pationt form" do
    render

    assert_select "form[action=?][method=?]", pationts_path, "post" do

      assert_select "input[name=?]", "pationt[name]"
    end
  end
end
