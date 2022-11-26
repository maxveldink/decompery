# typed: strict
# frozen_string_literal: true

class Decomp < ApplicationRecord
  extend T::Sig

  has_secure_token :invite_token

  has_many :stages, dependent: :destroy
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations

  validates :topic, presence: true

  enum :story_point_set, { fibonacci: 0 }
  kredis_hash :estimates, typed: :integer, after_change: :broadcast_estimates

  sig { params(user_id: String).void }
  def add_participant(user_id)
    user = User.find_by(id: user_id)

    Participation.create(decomp: self, user:) if user
  end

  sig { params(user_id: String).void }
  def remove_participant(user_id)
    Participation.find_by(decomp: self, user_id:)&.destroy
  end

  sig { returns(T::Array[Integer]) }
  def available_story_points
    case story_point_set
    when "fibonacci"
      [1, 2, 3, 5, 8, 13]
    else
      raise NotImplementedError, "Can't fetch available story points for unknown set."
    end
  end

  private

  sig { void }
  def broadcast_estimates
    broadcast_update_to([self, "estimates"], target: "estimates", partial: "estimates/estimates",
                                             locals: { decomp: self })
  end
end
