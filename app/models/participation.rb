# typed: strict
# frozen_string_literal: true

class Participation < ApplicationRecord
  validates :user, uniqueness: { scope: :decomp }

  belongs_to :decomp
  belongs_to :user
end
