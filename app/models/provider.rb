# frozen_string_literal: true

class Provider < ApplicationRecord
  has_many :sales
  has_one :address
end
