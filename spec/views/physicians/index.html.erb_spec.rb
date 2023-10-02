require 'rails_helper'

RSpec.describe "physicians/index", type: :view do
  before(:each) do
    assign(:physicians, [
      Physician.create!(
        name: "Name"
      ),
      Physician.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of physicians" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
