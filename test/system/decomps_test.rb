# typed: false
# frozen_string_literal: true

require "application_system_test_case"

class DecompsTest < ApplicationSystemTestCase
  test "decomp can be created" do
    visit root_url

    assert_text "Decomps"

    click_on "New decomp"

    assert_text "Topic"

    fill_in "Topic", with: "Testing 123"
    click_on "Create Decomp"

    assert_text "Testing 123"

    click_on "Decay something else"

    assert_text "Decomps"
  end

  test "link to existing decomp appears once visited" do
    visit root_url

    assert_no_text "currently decomposing"

    click_on "New decomp"
    fill_in "Topic", with: "Testing 123"
    click_on "Create Decomp"

    assert_text "Testing 123"

    visit root_url

    assert_text "currently decomposing"

    click_on "currently decomposing"

    assert_text "Testing 123"
  end

  test "adding additional stages of decomp" do
    decomp = FactoryBot.create(:decomp, topic: "Roasting max")
    visit decomp_path(decomp) + "?invite_token=#{decomp.invite_token}"

    assert_text "Roasting max"
    assert_no_text "A sub bullet"

    click_on "Decompose more"
    fill_in "Description", with: "A sub bullet"
    click_on "Decompose"

    assert_text "A sub bullet"
  end

  test "editing a decomp" do
    decomp = FactoryBot.create(:decomp, topic: "Banana")

    visit decomp_path(decomp) + "?invite_token=#{decomp.invite_token}"

    click_on "Edit Decomp"

    fill_in "Topic", with: "Apples"
    click_on "Update Decomp"

    assert_text "Apples"
  end

  test "deleting a stage works" do
    stage = FactoryBot.create(:stage)

    visit decomp_path(stage.decomp) + "?invite_token=#{stage.decomp.invite_token}"

    click_on "❌"

    assert_no_text "Testing"
    assert_nil Stage.find_by(id: stage.id)
  end
end
