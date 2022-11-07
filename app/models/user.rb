# typed: strict
# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true

  has_many :decomps, through: :participations
end
