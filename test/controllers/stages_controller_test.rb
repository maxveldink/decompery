# typed: false
# frozen_string_literal: true

require "test_helper"

class StagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @decomp = FactoryBot.create(:decomp)
  end

  test "new renders" do
    get new_decomp_stage_path(@decomp)

    assert_template :new
  end

  test "create stage" do
    assert_changes -> { Stage.count } do
      post decomp_stages_path(@decomp), params: { stage: { description: "Hello!" } }
    end
  end

  test "delete stage" do
    stage = FactoryBot.create(:stage, decomp: @decomp)

    delete decomp_stage_path(stage.decomp, stage)

    assert_nil Stage.find_by(id: stage.id)
  end
end
