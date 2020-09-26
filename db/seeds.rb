# frozen_string_literal: true

Purchaser.create(name: 'João Silva')
Product.create(description: 'R$10 off R$20 of food', price: 10.0)
Provider.create(name: "Bob's Pizza")
Address.create(provider: Provider.first, street: '987 Fake St')
Sale.create(
  purchaser: Purchaser.first,
  product: Product.first,
  provider: Provider.first,
  quantity: 1
)
