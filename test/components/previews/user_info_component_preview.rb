# typed: false
# frozen_string_literal: true

class UserInfoComponentPreview < ViewComponent::Preview
  def default
    user = User.new(name: "Insolent 💩")
    render(UserInfoComponent.new(user:))
  end
end
