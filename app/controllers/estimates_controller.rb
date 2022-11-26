# typed: false
# frozen_string_literal: true

class EstimatesController < ApplicationController
  before_action :set_decomp, only: %i[create clear]

  def create
    @decomp.estimates.update(params[:name] => params[:story_point])

    respond_to do |format|
      format.html { redirect_to decomp_url(@decomp) }
      format.turbo_stream
    end
  end

  def clear
    @decomp.estimates.remove

    respond_to do |format|
      format.html { redirect_to decomp_url(@decomp) }
      format.turbo_stream { render :create }
    end
  end

  private

  def set_decomp
    @decomp = Decomp.find(params[:decomp_id])
  end
end
