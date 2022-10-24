# typed: false
# frozen_string_literal: true

require "application_system_test_case"

class DecompsTest < ApplicationSystemTestCase
  test "decomp can be created" do
    visit root_url

    click_on "New decomp"

    assert_text "Topic"

    fill_in "Topic", with: "Testing 123"

    click_on "Create Decomp"

    assert_text "Testing 123"
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
end
