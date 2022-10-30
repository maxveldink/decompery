# typed: false
# frozen_string_literal: true

require "test_helper"

class DecompTest < ActiveSupport::TestCase
  context "validations" do
    should validate_presence_of(:topic)
  end

  test "it returns channel name" do
    assert_equal "decomp:#{decomps(:roasting_max).id}", decomps(:roasting_max).channel_name
  end
end
