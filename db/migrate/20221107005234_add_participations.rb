# frozen_string_literal: true

class AddParticipations < ActiveRecord::Migration[7.0]
  def change
    create_table :participations, id: :uuid do |t|
      t.belongs_to :decomp, type: :uuid
      t.belongs_to :user, type: :uuid

      t.timestamps
    end
  end
end
