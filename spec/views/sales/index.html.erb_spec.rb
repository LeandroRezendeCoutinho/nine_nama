require 'rails_helper'

RSpec.describe "sales/index", type: :view do
  before(:each) do
    assign(:sales, [
      Sale.create!(
        provider_id: 2,
        product_id: 3,
        quantity: 4,
        address_id: 5,
        provider_id: 6
      ),
      Sale.create!(
        provider_id: 2,
        product_id: 3,
        quantity: 4,
        address_id: 5,
        provider_id: 6
      )
    ])
  end

  it "renders a list of sales" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
  end
end
