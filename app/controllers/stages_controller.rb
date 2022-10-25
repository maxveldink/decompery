# typed: false
# frozen_string_literal: true

class StagesController < ApplicationController
  def new
    @stage = Stage.new(decomp_id: params[:decomp_id])
  end

  def create
    @stage = Stage.new(decomp_id: params[:decomp_id], **stage_params)

    if @stage.save
      respond_to do |format|
        format.html { redirect_to decomp_url(@stage.decomp), notice: t(".success") }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def stage_params
    params.require(:stage).permit(:description)
  end
end
