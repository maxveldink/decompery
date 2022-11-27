# typed: false
# frozen_string_literal: true

FactoryBot.define do
  factory :estimate do
    story_point { 3 }
    user
    decomp
  end
end
