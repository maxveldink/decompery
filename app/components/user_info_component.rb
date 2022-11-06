# typed: strict
# frozen_string_literal: true

class UserInfoComponent < ViewComponent::Base
  extend T::Sig

  sig { params(user: AnonymousUser).void }
  def initialize(user:)
    @user = user
  end
end
