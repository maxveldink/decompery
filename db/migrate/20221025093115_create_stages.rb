# frozen_string_literal: true

class CreateStages < ActiveRecord::Migration[7.0]
  def change
    create_table :stages, id: :uuid do |t|
      t.references :decomp, type: :uuid, null: false, foreign_key: true
      t.text :description, null: false

      t.timestamps
    end
  end
end
