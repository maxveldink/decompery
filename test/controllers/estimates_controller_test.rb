# typed: false
# frozen_string_literal: true

require "test_helper"

class EstimatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @decomp = FactoryBot.create(:decomp)
    @user = FactoryBot.create(:user)
  end

  test "create adds to estimates" do
    assert_empty(@decomp.estimates)

    post decomp_estimates_path(@decomp), params: { user_id: @user.id, story_point: 2 }

    assert_equal(@user.id, @decomp.reload.estimates.first.user.id)
    assert_equal(2, @decomp.estimates.first.story_point)
  end

  test "create overwrites existing estimate" do
    FactoryBot.create(:estimate, decomp: @decomp, user: @user, story_point: 2)

    assert_equal(2, @decomp.reload.estimates.first.story_point)

    assert_no_changes -> { Estimate.count } do
      post decomp_estimates_path(@decomp), params: { user_id: @user.id, story_point: 5 }
    end

    assert_equal(@user.id, @decomp.reload.estimates.first.user.id)
    assert_equal(5, @decomp.estimates.first.story_point)
  end

  test "display changes false show estimates to true" do
    get display_decomp_estimates_path(@decomp)

    assert @decomp.reload.show_estimates
  end

  test "clear removes all estimates and sets show estimates to false" do
    FactoryBot.create(:estimate, decomp: @decomp)

    delete clear_decomp_estimates_path(@decomp)

    assert_empty(@decomp.reload.estimates)
    assert_not @decomp.reload.show_estimates
  end
end
