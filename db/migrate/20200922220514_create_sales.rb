# frozen_string_literal: true

class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.integer :purchaser_id
      t.integer :product_id
      t.integer :quantity
      t.integer :provider_id

      t.timestamps
    end
  end
end
