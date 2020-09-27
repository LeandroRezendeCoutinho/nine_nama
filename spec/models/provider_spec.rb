# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Provider, type: :model do
  describe 'associations' do
    it { should have_many(:sales) }
    it { should have_one(:address) }
  end
end
