# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it { should have_many(:sales) }
  end

  describe 'monetize' do
    it { is_expected.to monetize(:price) }
  end
end
