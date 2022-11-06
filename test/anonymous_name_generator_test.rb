# typed: strict
# frozen_string_literal: true

require "test_helper"

class AnonymousNameGeneratorTest < ActiveSupport::TestCase
  test "returns name when no special words or emojis for month" do
    generator = AnonymousNameGenerator.new(date: Date.new(2022, 8, 1))

    assert_equal 2, generator.call.split.count
  end

  test "returns name when special words for month" do
    generator = AnonymousNameGenerator.new(date: Date.new(2022, 11, 1))

    assert_equal 2, generator.call.split.count
  end
end
