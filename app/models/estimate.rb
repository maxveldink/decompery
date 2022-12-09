# typed: strict
# frozen_string_literal: true

class Estimate < ApplicationRecord
  extend T::Sig

  belongs_to :decomp
  belongs_to :user
  after_commit :notify_decomps

  private

  sig { void }
  def notify_decomps
    broadcast_update_to(
      [decomp, "estimates"],
      target: "estimates",
      html: ApplicationController.render(
        EstimatesComponent.new(
          decomp: T.must(decomp)
        ),
        layout: false
      )
    )
  end
end
