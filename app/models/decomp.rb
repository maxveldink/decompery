# typed: strict
# frozen_string_literal: true

class Decomp < ApplicationRecord
  extend T::Sig

  has_many :stages, dependent: :destroy

  validates :topic, presence: true

  sig { returns(String) }
  def channel_name
    "decomp:#{id}"
  end
end
