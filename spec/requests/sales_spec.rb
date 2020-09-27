# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/sales', type: :request do
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      get sales_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      sale = Sale.create! valid_attributes
      get sale_url(sale)
      expect(response).to be_successful
    end
  end
end
