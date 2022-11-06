# typed: strict
# frozen_string_literal: true

class AnonymousNameGenerator
  extend T::Sig

  sig { params(date: Date).void }
  def initialize(date:)
    @date = date
  end

  sig { returns(String) }
  def call
    "#{T.cast(available_adjectives.sample, String).capitalize} #{available_emojis.sample}"
  end

  private

  sig { returns(Date) }
  attr_reader :date

  sig { returns(String) }
  def current_month
    date.strftime("%B").downcase
  end

  sig { returns(T::Array[String]) }
  def available_adjectives
    load_files("words")
  end

  sig { returns(T::Array[String]) }
  def available_emojis
    load_files("emojis")
  end

  sig { params(type: String).returns(T::Array[String]) }
  def load_files(type)
    evergreen_words = Rails.root.join("evergreen_available_#{type}.txt").read.split("\n")

    seasonal_words = if Rails.root.join("#{current_month}_available_#{type}.txt").exist?
                       Rails.root.join("#{current_month}_available_#{type}.txt").read.split("\n")
                     else
                       []
                     end

    evergreen_words.concat(seasonal_words)
  end
end
