# frozen_string_literal: true

class Sale < ApplicationRecord
  belongs_to :purchaser
  belongs_to :provider
  belongs_to :product

  def total_price
    product.price * quantity
  end
end
