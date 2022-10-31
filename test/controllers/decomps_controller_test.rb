# typed: false
# frozen_string_literal: true

require "test_helper"

class DecompsControllerTest < ActionDispatch::IntegrationTest
  test "index renders" do
    get decomps_path

    assert_template :index
  end

  test "show redirects to index when decomp not found" do
    get decomp_path(123)

    assert_redirected_to decomps_path
    assert_equal "Decomp has expired or does not exist.", flash[:notice]
  end

  test "show redirects to index when invite token doesn't match" do
    get decomp_path(decomps(:roasting_max)), params: { invite_token: "garbage" }

    assert_redirected_to decomps_path
    assert_equal "Decomp has expired or does not exist.", flash[:notice]
  end

  test "show renders when invite token in session matches" do
    decomp = Decomp.create(topic: "Testing")

    get decomp_path(decomp), params: { invite_token: decomp.invite_token }

    assert_template :show
    assert_equal decomp.id, session[:last_decomp_id]
    assert_equal decomp.invite_token, session[:last_decomp_invite_token]
  end

  test "new renders" do
    get new_decomp_path

    assert_template :new
  end

  test "create decomp" do
    assert_changes -> { Decomp.count } do
      post decomps_path, params: { decomp: { topic: "Hello!" } }
    end

    assert_not_nil session[:last_decomp_id]
    assert_not_nil session[:last_decomp_invite_token]
  end
end
