require 'rails_helper'

RSpec.describe "sales/edit", type: :view do
  before(:each) do
    @sale = assign(:sale, Sale.create!(
      provider_id: 1,
      product_id: 1,
      quantity: 1,
      address_id: 1,
      provider_id: 1
    ))
  end

  it "renders the edit sale form" do
    render

    assert_select "form[action=?][method=?]", sale_path(@sale), "post" do

      assert_select "input[name=?]", "sale[provider_id]"

      assert_select "input[name=?]", "sale[product_id]"

      assert_select "input[name=?]", "sale[quantity]"

      assert_select "input[name=?]", "sale[address_id]"

      assert_select "input[name=?]", "sale[provider_id]"
    end
  end
end
