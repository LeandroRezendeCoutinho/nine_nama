# frozen_string_literal: true

class TemporaryFile < ApplicationRecord
  has_one_attached :bin
end
