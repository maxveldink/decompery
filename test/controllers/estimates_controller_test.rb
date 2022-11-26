# typed: false
# frozen_string_literal: true

require "test_helper"

class EstimatesControllerTest < ActionDispatch::IntegrationTest
  test "create adds to estimates" do
    assert_empty(Decomp.first.estimates.keys)

    post decomp_estimates_path(Decomp.first), params: { name: "Audacious 🐰", story_point: 2 }

    assert_equal(["Audacious 🐰"], Decomp.first.estimates.keys)
    assert_equal([2], Decomp.first.estimates.values)
  end

  test "create overwrites existing estimate" do
    Decomp.first.estimates.update("Audacious 🐰" => 2)

    post decomp_estimates_path(Decomp.first), params: { name: "Audacious 🐰", story_point: 5 }

    assert_equal(["Audacious 🐰"], Decomp.first.estimates.keys)
    assert_equal([5], Decomp.first.estimates.values)
  end

  test "clear removes all estimates" do
    Decomp.first.estimates.update("Audacious 🐰" => 2)

    delete clear_decomp_estimates_path(Decomp.first)

    assert_empty(Decomp.first.estimates.keys)
  end
end
