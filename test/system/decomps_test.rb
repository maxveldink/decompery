# typed: false
# frozen_string_literal: true

require "application_system_test_case"

class DecompsTest < ApplicationSystemTestCase
  test "decomp can be created" do
    visit root_url

    assert_text "Stop."

    click_on "Start Decomposing"

    assert_text "What should we breakdown?"

    fill_in "Topic", with: "Testing 123"
    click_on "Create Decomp"

    assert_text "Testing 123"

    click_on "Decay something else"

    assert_text "What should we breakdown?"
  end

  test "link to existing decomp appears once visited" do
    visit root_path

    assert_no_text "currently decomposing"

    click_on "Start Decomposing"
    fill_in "Topic", with: "Testing 123"
    click_on "Create Decomp"

    assert_text "Testing 123"

    visit root_url

    assert_text "currently decomposing"

    click_on "currently decomposing"

    assert_text "Testing 123"
  end

  test "editing a decomp" do
    decomp = FactoryBot.create(:decomp, topic: "Banana")

    visit decomp_path(decomp) + "?invite_token=#{decomp.invite_token}"

    click_on "Edit Decomp"

    fill_in "Topic", with: "Apples"
    click_on "Update Decomp"

    assert_text "Apples"
  end
end
