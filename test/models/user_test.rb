# typed: false
# frozen_string_literal: true

require "test_helper"

class UserTest < ActiveSupport::TestCase
  context "validations" do
    should validate_presence_of(:name)
  end
end
