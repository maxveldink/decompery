# typed: false
# frozen_string_literal: true

require "test_helper"

class DecompsControllerTest < ActionDispatch::IntegrationTest
  test "show redirects to index when decomp not found" do
    get decomp_path(123)

    assert_redirected_to root_path
    assert_equal "Decomp has expired or does not exist.", flash[:notice]
  end

  test "show redirects to index when invite token doesn't match" do
    decomp = FactoryBot.create(:decomp)

    get decomp_path(decomp), params: { invite_token: "garbage" }

    assert_redirected_to root_path
    assert_equal "Decomp has expired or does not exist.", flash[:notice]
  end

  test "show renders when invite token in session matches" do
    decomp = FactoryBot.create(:decomp)

    get decomp_path(decomp), params: { invite_token: decomp.invite_token }

    assert_template :show
    assert_equal decomp.id, session[:last_decomp_id]
    assert_equal decomp.invite_token, session[:last_decomp_invite_token]
  end

  test "create decomp" do
    assert_changes -> { Decomp.count } do
      post decomps_path
    end

    assert_not_nil session[:last_decomp_id]
    assert_not_nil session[:last_decomp_invite_token]
  end
end
