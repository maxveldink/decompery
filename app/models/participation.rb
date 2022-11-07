# typed: strict
# frozen_string_literal: true

class Participation < ApplicationRecord
  belongs_to :decomp
  belongs_to :user
end
