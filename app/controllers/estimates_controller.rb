# typed: false
# frozen_string_literal: true

class EstimatesController < ApplicationController
  before_action :set_decomp, only: %i[create clear]

  def create
    @estimate = Estimate.find_or_initialize_by(decomp: @decomp, user: User.find(estimate_params[:user_id]))
    @estimate.story_point = estimate_params[:story_point]
    @estimate.save

    respond_to do |format|
      format.html { redirect_to decomp_url(@decomp) }
      format.turbo_stream
    end
  end

  def clear
    @decomp.estimates.destroy_all

    respond_to do |format|
      format.html { redirect_to decomp_url(@decomp) }
      format.turbo_stream { render :create }
    end
  end

  private

  def set_decomp
    @decomp = Decomp.find(params[:decomp_id])
  end

  def estimate_params
    params.permit(:story_point, :user_id)
  end
end
