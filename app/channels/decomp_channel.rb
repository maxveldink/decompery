# typed: false
# frozen_string_literal: true

class DecompChannel < ApplicationCable::Channel
  before_subscribe :set_decomp
  before_unsubscribe :set_decomp

  def subscribed
    stream_for(@decomp)

    @decomp.add_participant(params[:user_id])
  end

  def unsubscribed
    # stop_all_streams

    @decomp.remove_participant(params[:user_id])
  end

  private

  def set_decomp
    @decomp = Decomp.find(params[:id])
  end
end
