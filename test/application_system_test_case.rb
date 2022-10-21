# typed: false
# frozen_string_literal: true

require "test_helper"
require "capybara/cuprite"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :cuprite
end
