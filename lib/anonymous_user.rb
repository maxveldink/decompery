# typed: strict
# frozen_string_literal: true

class AnonymousUser < T::Struct
  const :id, String, default: SecureRandom.uuid
  const :name, String
end
