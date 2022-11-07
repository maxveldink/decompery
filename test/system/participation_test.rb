# typed: false
# frozen_string_literal: true

require "application_system_test_case"

class ParticipationTest < ApplicationSystemTestCase
  setup do
    @decomp = Decomp.create(topic: "Multiples")
  end

  test "it tracks who is on a decomp" do
    visit decomp_path(@decomp) + "?invite_token=#{@decomp.invite_token}"

    assert_selector(:xpath, "//div[@data-testid='participant']", count: 1)

    using_session "Another" do
      visit decomp_path(@decomp) + "?invite_token=#{@decomp.invite_token}"

      assert_selector(:xpath, "//div[@data-testid='participant']", count: 2)
    end

    assert_selector(:xpath, "//div[@data-testid='participant']", count: 2)

    using_session "Another" do
      current_scope.session.quit
    end

    assert_selector(:xpath, "//div[@data-testid='participant']", count: 1)
  end
end
