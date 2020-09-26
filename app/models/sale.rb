# frozen_string_literal: true

class Sale < ApplicationRecord
  belongs_to :purchaser
  belongs_to :provider
  belongs_to :product
end
