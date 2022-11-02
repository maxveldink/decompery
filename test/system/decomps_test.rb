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
    visit decomp_path(decomps(:roasting_max))

    assert_text decomps(:roasting_max).topic
    assert_no_text "A sub bullet"

    click_on "Decompose more"
    fill_in "Description", with: "A sub bullet"
    click_on "Decompose"

    assert_text "A sub bullet"
  end
end
