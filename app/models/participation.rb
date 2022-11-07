# typed: false
# frozen_string_literal: true

class Participation < ApplicationRecord
  validates :user, uniqueness: { scope: :decomp }

  belongs_to :decomp
  belongs_to :user

  broadcasts_to ->(participation) { [participation.decomp, "participations"] }, inserts_by: :append
  after_destroy_commit :broadcast_remove

  private

  def broadcast_remove
    broadcast_remove_to(decomp, :participations, target: "user_#{user.id}")
  end
end
