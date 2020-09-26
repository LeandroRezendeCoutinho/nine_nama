# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :sales
  monetize :price_cents
end
