# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SalesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/sales').to route_to('sales#index')
    end

    it 'routes to #show' do
      expect(get: '/sales/1').to route_to('sales#show', id: '1')
    end
  end
end
