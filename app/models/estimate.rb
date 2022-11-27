# typed: strict
# frozen_string_literal: true

class Estimate < ApplicationRecord
  extend T::Sig

  belongs_to :decomp
  belongs_to :user
  after_commit :notify_decomps

  private

  # rubocop:disable Metrics/MethodLength
  sig { void }
  def notify_decomps
    broadcast_update_to(
      [decomp, "estimates"],
      target: "estimates",
      html: ApplicationController.render(
        EstimatesComponent.new(
          estimates: T.must(decomp).estimates.to_a,
          participant_count: T.must(decomp).participations.count
        ),
        layout: false
      )
    )
  end
  # rubocop:enable Metrics/MethodLength
end
