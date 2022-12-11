# typed: false
# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true

  has_many :participations, dependent: :destroy
  has_many :estimates, dependent: :destroy
  has_many :decomps, through: :participations

  after_commit :notify

  private

  # rubocop:disable Metrics/MethodLength
  def notify
    decomps.each do |decomp|
      broadcast_update_to(
        [decomp, "estimates"],
        target: "estimates",
        html: ApplicationController.render(
          EstimatesComponent.new(
            decomp:
          ),
          layout: false
        )
      )
    end

    participations.each do |participation|
      broadcast_replace_to(
        [participation.decomp, "participations"],
        target: "user_#{id}",
        partial: "participations/participation",
        locals: { participation: }
      )
    end
  end
  # rubocop:enable Metrics/MethodLength
end
