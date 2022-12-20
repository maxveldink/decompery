# typed: false
# frozen_string_literal: true

require "application_system_test_case"

class DecompsTest < ApplicationSystemTestCase
  test "decomp can be created" do
    visit root_url

    assert_text "Stop."

    click_on "Start Decomposing"

    assert_text "Deliberation"

    visit root_url

    assert_text "currently decomposing"

    click_on "currently decomposing"

    assert_text "Deliberation"
  end
end
