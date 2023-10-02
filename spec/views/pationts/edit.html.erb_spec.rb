require 'rails_helper'

RSpec.describe "pationts/edit", type: :view do
  let(:pationt) {
    Pationt.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:pationt, pationt)
  end

  it "renders the edit pationt form" do
    render

    assert_select "form[action=?][method=?]", pationt_path(pationt), "post" do

      assert_select "input[name=?]", "pationt[name]"
    end
  end
end
