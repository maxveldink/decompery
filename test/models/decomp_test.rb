# typed: false
# frozen_string_literal: true

require "test_helper"

class DecompTest < ActiveSupport::TestCase
  context "validations" do
    should validate_presence_of(:topic)
  end

  test "it should have an invite token" do
    assert_not_nil Decomp.create(topic: "Testing").invite_token
  end
end
