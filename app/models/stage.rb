# typed: strict
# frozen_string_literal: true

class Stage < ApplicationRecord
  belongs_to :decomp

  validates :description, presence: true
end
