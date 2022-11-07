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

  test "add participant creates participant if user is found" do
    assert_changes -> { Participation.count } do
      @decomp.add_participant(@user.id)
    end
  end

  test "add participant does nothing if user is not found" do
    assert_no_changes -> { Participation.count } do
      @decomp.add_participant("garbage")
    end
  end

  test "remove participant destroys participation if user is found" do
    @decomp.add_participant(@user.id)

    assert_changes -> { Participation.count } do
      @decomp.remove_participant(@user.id)
    end
  end

  test "remove participant does nothing if user is not found" do
    @decomp.add_participant(@user.id)

    assert_no_changes -> { Participation.count } do
      @decomp.remove_participant("garbage")
    end
  end
end
