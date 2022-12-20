# typed: false
# frozen_string_literal: true

require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  setup do
    @decomp = Decomp.create
  end

  test "invite_path works" do
    assert_equal "/decomps/#{@decomp.id}?invite_token=#{@decomp.invite_token}", invite_path(@decomp)
  end

  test "invite_url works" do
    assert_equal "http://test.host/decomps/#{@decomp.id}?invite_token=#{@decomp.invite_token}", invite_url(@decomp)
  end

  test "current_user anonomizes when not in session" do
    assert_not_nil current_user.name
  end

  test "current_user return user when in session" do
    session[:current_user_id] = User.create(name: "Max").id

    assert_equal "Max", current_user.name
  end
end
