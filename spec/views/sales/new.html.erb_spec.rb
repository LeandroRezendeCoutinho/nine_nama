require 'rails_helper'

RSpec.describe "sales/new", type: :view do
  before(:each) do
    assign(:sale, Sale.new(
      provider_id: 1,
      product_id: 1,
      quantity: 1,
      address_id: 1,
      provider_id: 1
    ))
  end

  it "renders new sale form" do
    render

    assert_select "form[action=?][method=?]", sales_path, "post" do

      assert_select "input[name=?]", "sale[provider_id]"

      assert_select "input[name=?]", "sale[product_id]"

      assert_select "input[name=?]", "sale[quantity]"

      assert_select "input[name=?]", "sale[address_id]"

      assert_select "input[name=?]", "sale[provider_id]"
    end
  end
end
