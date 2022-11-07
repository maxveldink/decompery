# typed: strict
# frozen_string_literal: true

class UserInfoComponent < ViewComponent::Base
  extend T::Sig

  sig { params(user: User).void }
  def initialize(user:)
    @user = user
  end
end
