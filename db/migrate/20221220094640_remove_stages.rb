# frozen_string_literal: true

class RemoveStages < ActiveRecord::Migration[7.0]
  def up
    drop_table :stages
  end

  def down
    create_table :stages, id: :uuid do |t|
      t.references :decomp, type: :uuid, null: false, foreign_key: true
      t.text :description, null: false

      t.timestamps
    end
  end
end
