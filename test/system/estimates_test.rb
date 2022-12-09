# typed: false
# frozen_string_literal: true

require "application_system_test_case"

class EstimatesTest < ApplicationSystemTestCase
  setup do
    @decomp = FactoryBot.create(:decomp, topic: "Multiples")
  end

  test "it allows estimation" do
    visit decomp_path(@decomp) + "?invite_token=#{@decomp.invite_token}"

    click_on "5"

    assert_selector(:xpath, "//div[@data-testid='estimate']", count: 1)

    using_session "Another" do
      visit decomp_path(@decomp) + "?invite_token=#{@decomp.invite_token}"

      click_on "13"

      assert_selector(:xpath, "//div[@data-testid='estimate']", count: 2)
    end

    assert_selector(:xpath, "//div[@data-testid='estimate']", count: 2)
  end

  test "it handles toggling estimates" do
    visit decomp_path(@decomp) + "?invite_token=#{@decomp.invite_token}"

    click_on "5"

    assert_selector(:xpath, "//div[@data-testid='estimate']", text: "?")

    using_session "Another" do
      visit decomp_path(@decomp) + "?invite_token=#{@decomp.invite_token}"

      click_on "13"

      assert_selector(:xpath, "//div[@data-testid='estimate']", count: 2, text: "?")

      click_on "Toggle Estimates"

      assert_selector(:xpath, "//div[@data-testid='estimate']", text: "5")
    end

    assert_selector(:xpath, "//div[@data-testid='estimate']", text: "13")
  end

  test "it handles clearing estimations" do
    visit decomp_path(@decomp) + "?invite_token=#{@decomp.invite_token}"

    click_on "5"

    assert_selector(:xpath, "//div[@data-testid='estimate']", count: 1)

    using_session "Another" do
      visit decomp_path(@decomp) + "?invite_token=#{@decomp.invite_token}"

      click_on "13"

      assert_selector(:xpath, "//div[@data-testid='estimate']", count: 2)

      click_on "Clear Estimates"

      assert_no_selector(:xpath, "//div[@data-testid='estimate']")
    end

    assert_no_selector(:xpath, "//div[@data-testid='estimate']")
  end
end
