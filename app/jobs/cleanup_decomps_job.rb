# typed: true

class CleanupDecompsJob < ApplicationJob
  queue_as :default

  def perform
    Decomp.where(updated_at: ..1.week.ago).destroy_all
  end
end
