# typed: false
# frozen_string_literal: true

class NotificationComponentPreview < ViewComponent::Preview
  def default
    render(NotificationComponent.new(description: "description"))
  end

  def with_path
    render(NotificationComponent.new(description: "description", path: "/decomps"))
  end
end
