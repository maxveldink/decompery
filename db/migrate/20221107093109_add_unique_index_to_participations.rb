# frozen_string_literal: true

class AddUniqueIndexToParticipations < ActiveRecord::Migration[7.0]
  def change
    add_index :participations, %i[decomp_id user_id], unique: true
  end
end
