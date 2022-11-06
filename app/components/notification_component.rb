# typed: strict
# frozen_string_literal: true

class NotificationComponent < ViewComponent::Base
  extend T::Sig

  sig { params(description: String, path: T.nilable(String)).void }
  def initialize(description:, path: nil)
    @description = T.let(description, String)
    @path = T.let(path, T.nilable(String))
  end
end
