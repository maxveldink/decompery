# typed: true
# frozen_string_literal: true

require "test_helper"

class EstimatesComponentTest < ViewComponent::TestCase
  setup do
    @user = FactoryBot.create(:user)
    @decomp = FactoryBot.create(:decomp)
  end

  def test_prompt_is_empty_when_show_estimates_is_false
    component = EstimatesComponent.new(decomp: @decomp)

    assert_equal("", component.prompt)
  end

  def test_prompt_when_estimates_in_agreement
    @decomp.show_estimates = true
    @decomp.estimates = [Estimate.new(user: @user, story_point: 5), Estimate.new(user: @user, story_point: 5)]
    component = EstimatesComponent.new(decomp: @decomp)

    assert_equal("🎉 Everyone agrees! Let's break down some more!", component.prompt)
  end

  def test_prompt_when_estimate_distance_is_small
    @decomp.show_estimates = true
    @decomp.estimates = [Estimate.new(user: @user, story_point: 3), Estimate.new(user: @user, story_point: 5)]
    component = EstimatesComponent.new(decomp: @decomp)

    assert_equal("🫱🏿‍🫲🏽 Okay, we're close. How do we reach consensus?", component.prompt)
  end

  def test_prompt_when_estimate_distance_is_large
    @decomp.show_estimates = true
    @decomp.estimates = [
      Estimate.new(user: @user, story_point: 8),
      Estimate.new(user: @user, story_point: 1)
    ]
    component = EstimatesComponent.new(decomp: @decomp)

    assert_equal(
      "🍄 There are different ideas about the effort here. Do we need to decompose more or clarify requirements?",
      component.prompt
    )
  end

  def test_component_renders_when_hidden
    @decomp.estimates = [Estimate.new(user: @user, story_point: 8), Estimate.new(user: @user, story_point: 1)]
    component = EstimatesComponent.new(decomp: @decomp)
    render_inline(component)

    assert_selector("div[data-testid='estimate']", text: "?")
    assert_no_selector("div[data-testid='estimate']", text: "8")
    assert_no_selector("p[data-testid='prompt']")
  end

  def test_component_renders_when_shown
    @decomp.show_estimates = true
    @decomp.estimates = [Estimate.new(user: @user, story_point: 8), Estimate.new(user: @user, story_point: 1)]
    component = EstimatesComponent.new(decomp: @decomp)
    render_inline(component)

    assert_selector("div[data-testid='estimate']", text: "8")
    assert_no_selector("div[data-testid='estimate']", text: "?")
    assert_selector("p[data-testid='prompt']")
  end
end
