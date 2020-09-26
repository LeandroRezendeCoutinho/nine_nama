# frozen_string_literal: true

class Purchaser < ApplicationRecord
  has_many :sales
end
