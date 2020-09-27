# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Sale, type: :model do
  describe 'associations' do
    it { should belong_to(:purchaser) }
    it { should belong_to(:provider) }
    it { should belong_to(:product) }
  end
end
