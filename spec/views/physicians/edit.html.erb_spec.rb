require 'rails_helper'

RSpec.describe "physicians/edit", type: :view do
  let(:physician) {
    Physician.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:physician, physician)
  end

  it "renders the edit physician form" do
    render

    assert_select "form[action=?][method=?]", physician_path(physician), "post" do

      assert_select "input[name=?]", "physician[name]"
    end
  end
end
