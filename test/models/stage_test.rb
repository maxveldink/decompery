# typed: false
# frozen_string_literal: true

require "test_helper"

class StageTest < ActiveSupport::TestCase
  context "validations" do
    should validate_presence_of(:description)
  end
end
