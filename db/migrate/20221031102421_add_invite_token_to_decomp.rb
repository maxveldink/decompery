# frozen_string_literal: true

class AddInviteTokenToDecomp < ActiveRecord::Migration[7.0]
  def change
    add_column :decomps, :invite_token, :string
    add_index :decomps, :invite_token, unique: true
  end
end
