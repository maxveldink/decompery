# typed: false
# frozen_string_literal: true

require "test_helper"

class StagesControllerTest < ActionDispatch::IntegrationTest
  test "new renders" do
    get new_decomp_stage_path(Decomp.first)

    assert_template :new
  end

  test "create stage" do
    assert_changes -> { Stage.count } do
      post decomp_stages_path(Decomp.first), params: { stage: { description: "Hello!" } }
    end
  end
end
