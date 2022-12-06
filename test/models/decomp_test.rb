# typed: false
# frozen_string_literal: true

require "test_helper"

class DecompTest < ActiveSupport::TestCase
  context "validations" do
    should validate_presence_of(:topic)
  end

  setup do
    @decomp = Decomp.create(topic: "Testing")
    @user = User.create(name: "Max")
  end

  test "it should have an invite token" do
    assert_not_nil @decomp.invite_token
  end

  test "returns available story points" do
    assert_equal([1, 2, 3, 5, 8, 13], @decomp.available_story_points)
  end
end
