# typed: false
# frozen_string_literal: true

require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "regenerate_name sets new randomized name" do
    user = FactoryBot.create(:user, name: "Old Name")

    post regenerate_name_user_path(user)

    assert_not_equal "Old Name", user.reload.name
  end
end
