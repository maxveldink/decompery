# typed: strict
# frozen_string_literal: true

class Decomp < ApplicationRecord
  has_many :stages, dependent: :destroy

  validates :topic, presence: true
end
