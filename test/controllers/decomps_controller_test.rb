# typed: false
# frozen_string_literal: true

require "test_helper"

class DecompsControllerTest < ActionDispatch::IntegrationTest
  test "index renders" do
    get decomps_path

    assert_template :index
  end

  test "show renders" do
    get decomp_path(decomps(:roasting_max))

    assert_template :show
  end

  test "new renders" do
    get new_decomp_path

    assert_template :new
  end

  test "create decomp" do
    assert_changes -> { Decomp.count } do
      post decomps_path, params: { decomp: { topic: "Hello!" } }
    end
  end
end
