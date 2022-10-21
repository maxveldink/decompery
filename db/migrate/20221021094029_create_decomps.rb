# typed: true
# frozen_string_literal: true

class CreateDecomps < ActiveRecord::Migration[7.0]
  def change
    create_table :decomps, id: :uuid do |t|
      t.text :topic, null: false

      t.timestamps
    end
  end
end
