# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_200_922_214_944) do
  create_table 'addresses', force: :cascade do |t|
    t.string 'street'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'products', force: :cascade do |t|
    t.string 'description'
    t.integer 'price_cents'
    t.string 'price_currency'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'providers', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'purchasers', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
