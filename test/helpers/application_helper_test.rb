# typed: false
# frozen_string_literal: true

require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  setup do
    @decomp = Decomp.create(topic: "Banana")
  end

  test "invite_path works" do
    assert_equal "/decomps/#{@decomp.id}?invite_token=#{@decomp.invite_token}", invite_path(@decomp)
  end

  test "invite_url works" do
    assert_equal "http://test.host/decomps/#{@decomp.id}?invite_token=#{@decomp.invite_token}", invite_url(@decomp)
  end
end
