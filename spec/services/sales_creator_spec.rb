# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SalesCreator do
  describe '#call' do
    context 'when receives an array with sales data' do
      it 'saves sale' do
        sales = [
          [
            'João Silva',
            'R$10 off R$20 of food',
            '10.0',
            '2',
            '987 Fake St',
            "Bob's Pizza"
          ]
        ]

        expect { SalesCreator.call(sales) }.to change { Sale.count }.from(0).to(1)
        sale = Sale.first
        expect(sale.purchaser.name).to eq('João Silva')
        expect(sale.product.description).to eq('R$10 off R$20 of food')
        expect(sale.product.price.cents).to eq(10.to_money.cents)
        expect(sale.quantity).to eq(2)
        expect(sale.provider.address.street).to eq('987 Fake St')
        expect(sale.provider.name).to eq("Bob's Pizza")
      end
    end
    context 'when receives an array with empty data' do
      it 'saves sale' do
        sales = []

        expect { SalesCreator.call(sales) }.not_to change { Sale.count }
      end
    end
  end
end
