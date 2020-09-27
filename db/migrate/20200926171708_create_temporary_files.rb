# frozen_string_literal: true

class CreateTemporaryFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :temporary_files do |t|
      t.binary :bin

      t.timestamps
    end
  end
end
