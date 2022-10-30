# typed: strict
# frozen_string_literal: true

class Stage < ApplicationRecord
  belongs_to :decomp

  validates :description, presence: true

  broadcasts_to ->(stage) { "decomp:#{stage.decomp_id}" }, inserts_by: :append
end
