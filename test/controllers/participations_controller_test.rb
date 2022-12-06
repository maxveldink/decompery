# typed: false
# frozen_string_literal: true

require "test_helper"

class DecompsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @decomp = FactoryBot.create(:decomp)
    @user = FactoryBot.create(:user)
  end

  test "create creates participant if user is found" do
    assert_changes -> { Participation.count } do
      post decomp_participations_path(@decomp), params: { user_id: @user.id }
    end

    assert_equal Participation.find_by(decomp: @decomp, user: @user).id, JSON.parse(response.body)["participation_id"]
  end

  test "create does nothing if user is not found" do
    assert_no_changes -> { Participation.count } do
      post decomp_participations_path(@decomp), params: { user_id: "banana" }
    end
  end

  test "create doesn't duplicate existing participants" do
    post decomp_participations_path(@decomp), params: { user_id: @user.id }

    assert_no_changes -> { Participation.count } do
      post decomp_participations_path(@decomp), params: { user_id: @user.id }
    end
  end

  test "destroy destroys participation if user is found" do
    post decomp_participations_path(@decomp), params: { user_id: @user.id }

    participation_id = JSON.parse(response.body)["participation_id"]

    assert_changes -> { Participation.count } do
      delete decomp_participation_path(@decomp, participation_id), params: { user_id: @user.id }
    end
  end
end
