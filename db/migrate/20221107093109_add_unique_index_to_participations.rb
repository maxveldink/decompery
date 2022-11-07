class AddUniqueIndexToParticipations < ActiveRecord::Migration[7.0]
  def change
    add_index :participations, [:decomp_id, :user_id], unique: true
  end
end
