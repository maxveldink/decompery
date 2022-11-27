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
    decomp = FactoryBot.create(:decomp)

    get decomp_path(decomp), params: { invite_token: "garbage" }

    assert_redirected_to decomps_path
    assert_equal "Decomp has expired or does not exist.", flash[:notice]
  end

  test "show renders when invite token in session matches" do
    decomp = FactoryBot.create(:decomp)

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

  test "create decomp with invalid data" do
    assert_no_changes -> { Decomp.count } do
      post decomps_path, params: { decomp: { fruit: "Hello!" } }
    end

    assert_response(:unprocessable_entity)

    assert_nil session[:last_decomp_id]
    assert_nil session[:last_decomp_invite_token]
  end

  test "edit renders" do
    decomp = FactoryBot.create(:decomp)

    get edit_decomp_path(decomp) + "?invite_token=#{decomp.invite_token}"

    assert_template :edit
  end

  test "update decomp" do
    decomp = FactoryBot.create(:decomp, topic: "Banana")

    patch decomp_path(decomp) + "?invite_token=#{decomp.invite_token}", params: { decomp: { topic: "Apples" } }

    assert_equal "Apples", decomp.reload.topic
  end

  test "update decomp with invalid data" do
    decomp = FactoryBot.create(:decomp, topic: "Banana")

    patch decomp_path(decomp) + "?invite_token=#{decomp.invite_token}", params: { decomp: { fruit: "Apples" } }

    assert_equal "Banana", decomp.reload.topic
  end
end
