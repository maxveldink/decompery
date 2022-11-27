# typed: true
# frozen_string_literal: true

require "test_helper"

class EstimatesComponentTest < ViewComponent::TestCase
  setup do
    @user = FactoryBot.create(:user)
  end

  def test_prompt_is_empty_when_only_one_participant
    component = EstimatesComponent.new(
      estimates: [Estimate.new(user: @user, story_point: 2), Estimate.new(user: @user, story_point: 5)],
      participant_count: 1
    )

    assert_equal("", component.prompt)
  end

  def test_prompt_is_empty_when_only_one_estimate
    component = EstimatesComponent.new(estimates: [Estimate.new(user: @user, story_point: 2)], participant_count: 2)

    assert_equal("", component.prompt)
  end

  def test_prompt_is_empty_when_estimates_does_not_equal_participants
    component = EstimatesComponent.new(
      estimates: [Estimate.new(user: @user, story_point: 2), Estimate.new(user: @user, story_point: 5)],
      participant_count: 5
    )

    assert_equal("", component.prompt)
  end

  def test_prompt_when_estimates_in_agreement
    component = EstimatesComponent.new(
      estimates: [Estimate.new(user: @user, story_point: 5), Estimate.new(user: @user, story_point: 5)],
      participant_count: 2
    )

    assert_equal("🎉 Everyone agrees! Let's break down some more!", component.prompt)
  end

  def test_prompt_when_estimate_distance_is_small
    component = EstimatesComponent.new(
      estimates: [Estimate.new(user: @user, story_point: 3), Estimate.new(user: @user, story_point: 5)],
      participant_count: 2
    )

    assert_equal("🫱🏿‍🫲🏽 Okay, we're close. How do we reach consensus?", component.prompt)
  end

  def test_prompt_when_estimate_distance_is_large
    component = EstimatesComponent.new(
      estimates: [Estimate.new(user: @user, story_point: 8), Estimate.new(user: @user, story_point: 1),
                  Estimate.new(user: @user, story_point: 5)],
      participant_count: 3
    )

    assert_equal(
      "🍄 There are different ideas about the effort here. Do we need to decompose more or clarify requirements?",
      component.prompt
    )
  end

  def test_component_renders_when_hidden
    component = EstimatesComponent.new(
      estimates: [Estimate.new(user: @user, story_point: 8), Estimate.new(user: @user, story_point: 1)],
      participant_count: 3
    )
    render_inline(component)

    assert_selector("div[data-testid='estimate']", text: "?")
    assert_no_selector("div[data-testid='estimate']", text: "8")
    assert_no_selector("p[data-testid='prompt']")
  end

  # rubocop:disable Metrics/MethodLength
  def test_component_renders_when_shown
    component = EstimatesComponent.new(
      estimates: [
        Estimate.new(user: @user, story_point: 8),
        Estimate.new(user: @user, story_point: 1),
        Estimate.new(user: @user, story_point: 5)
      ],
      participant_count: 3
    )
    render_inline(component)

    assert_selector("div[data-testid='estimate']", text: "8")
    assert_no_selector("div[data-testid='estimate']", text: "?")
    assert_selector("p[data-testid='prompt']")
  end
  # rubocop:enable Metrics/MethodLength
end
