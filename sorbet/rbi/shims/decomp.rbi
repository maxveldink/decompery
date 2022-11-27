# typed: strict
# frozen_string_literal: true

class Decomp
  sig { returns(T::Hash[String, Integer]) }
  attr_reader :estimates
end
