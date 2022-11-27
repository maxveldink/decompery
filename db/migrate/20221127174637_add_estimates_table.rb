# frozen_string_literal: true

class AddEstimatesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :estimates, id: :uuid do |t|
      t.references :decomp, type: :uuid, null: false, foreign_key: true
      t.references :user, type: :uuid, null: false, foreign_key: true
      t.integer :story_point, null: false

      t.timestamps
    end
  end
end
