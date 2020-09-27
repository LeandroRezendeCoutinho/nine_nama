# frozen_string_literal: true

class SalesCreator
  class UnknownAttribute < StandardError; end

  def initialize(sales)
    @sales = sales
  end

  def self.call(sales)
    new(sales).call
  end

  def call
    @sales.each do |sale|
      purchaser = Purchaser.find_or_create_by!(
        name: sale_from(sale, 'purchaser_name')
      )
      product = Product.find_or_create_by!(
        description: sale_from(sale, 'product_description'),
        price_cents: sale_from(sale, 'product_price')
      )
      provider = Provider.find_or_create_by!(
        name: sale_from(sale, 'provider_name')
      )
      Address.find_or_create_by!(
        street: sale_from(sale, 'address'),
        provider: provider
      )
      Sale.create!(
        purchaser: purchaser,
        product: product,
        provider: provider,
        quantity: sale_from(sale, 'quantity')
      )
    end
  end

  private

  def sale_from(sale, field)
    case field
    when 'purchaser_name'
      sale[0]
    when 'product_description'
      sale[1]
    when 'product_price'
      sale[2].to_money.cents
    when 'quantity'
      sale[3]
    when 'address'
      sale[4]
    when 'provider_name'
      sale[5]
    else
      raise UnknownAttribute
    end
  end
end
