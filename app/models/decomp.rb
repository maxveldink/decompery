# typed: strict
# frozen_string_literal: true

class Decomp < ApplicationRecord
  extend T::Sig

  has_secure_token :invite_token

  has_many :stages, dependent: :destroy
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations
  has_many :estimates, dependent: :destroy

  validates :topic, presence: true

  enum :story_point_set, { fibonacci: 0 }

  sig { returns(T::Array[Integer]) }
  def available_story_points
    case story_point_set
    when "fibonacci"
      [1, 2, 3, 5, 8, 13]
    else
      raise NotImplementedError, "Can't fetch available story points for unknown set."
    end
  end
end
