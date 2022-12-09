# typed: strict
# frozen_string_literal: true

class EstimatesComponent < ViewComponent::Base
  extend T::Sig

  sig { returns(Decomp) }
  attr_reader :decomp

  sig { params(decomp: Decomp).void }
  def initialize(decomp:)
    @decomp = decomp
  end

  sig { returns(String) }
  def prompt
    return "" unless decomp.show_estimates

    story_points = decomp.estimates.map(&:story_point)
    distance = story_points.empty? ? 0 : T.must(story_points.max) - T.must(story_points.min)

    if distance.zero?
      "🎉 Everyone agrees! Let's break down some more!"
    elsif distance < 3
      "🫱🏿‍🫲🏽 Okay, we're close. How do we reach consensus?"
    else
      "🍄 There are different ideas about the effort here. Do we need to decompose more or clarify requirements?"
    end
  end
end
