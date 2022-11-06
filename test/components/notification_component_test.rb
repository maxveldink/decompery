# typed: false
# frozen_string_literal: true

require "test_helper"

class NotificationComponentTest < ViewComponent::TestCase
  def test_component_renders_without_path
    render_inline(NotificationComponent.new(description: "testing"))

    assert_no_selector("a")
  end

  def test_component_renders_with_path
    render_inline(NotificationComponent.new(description: "testing", path: "my path"))

    assert_selector("a", text: "testing")
  end
end
