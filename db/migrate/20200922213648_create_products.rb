# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :description
      t.integer :price_cents
      t.string :price_currency

      t.timestamps
    end
  end
end
