# typed: strict
# frozen_string_literal: true

class Decomp < ApplicationRecord
  extend T::Sig

  has_secure_token :invite_token

  has_many :stages, dependent: :destroy
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations

  validates :topic, presence: true

  sig { params(user_id: String).void }
  def add_participant(user_id)
    user = User.find_by(id: user_id)

    Participation.create(decomp: self, user:) if user
  end

  sig { params(user_id: String).void }
  def remove_participant(user_id)
    Participation.find_by(decomp: self, user_id:)&.destroy
  end
end
