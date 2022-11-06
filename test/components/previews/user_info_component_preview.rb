# typed: false
# frozen_string_literal: true

class UserInfoComponentPreview < ViewComponent::Preview
  def with_defaults
    user = AnonymousUser.new(name: "Insolent 💩")
    render(UserInfoComponent.new(user:))
  end
end
