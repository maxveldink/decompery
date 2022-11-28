# typed: false
# frozen_string_literal: true

require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "home renders" do
    get root_path

    assert_template :home
  end
end
