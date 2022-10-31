# typed: strict
# frozen_string_literal: true

class Decomp < ApplicationRecord
  has_secure_token :invite_token

  has_many :stages, dependent: :destroy

  validates :topic, presence: true
end
