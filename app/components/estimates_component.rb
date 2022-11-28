# typed: strict
# frozen_string_literal: true

class EstimatesComponent < ViewComponent::Base
  extend T::Sig

  sig { returns(T::Array[Estimate]) }
  attr_reader :estimates

  sig { returns(Integer) }
  attr_reader :participant_count

  sig { params(estimates: T::Array[Estimate], participant_count: Integer).void }
  def initialize(estimates:, participant_count:)
    @estimates = estimates
    @participant_count = participant_count
  end

  sig { returns(T::Boolean) }
  def show_estimates?
    estimates.size == participant_count && participant_count > 1
  end

  sig { returns(String) }
  def prompt
    return "" unless participant_count > 1 && estimates.size > 1 && show_estimates?

    story_points = estimates.map(&:story_point)
    distance = T.must(story_points.max) - T.must(story_points.min)

    if distance.zero?
      "🎉 Everyone agrees! Let's break down some more!"
    elsif distance < 3
      "🫱🏿‍🫲🏽 Okay, we're close. How do we reach consensus?"
    else
      "🍄 There are different ideas about the effort here. Do we need to decompose more or clarify requirements?"
    end
  end
end
