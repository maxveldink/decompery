# typed: false
# frozen_string_literal: true

class DecompsController < ApplicationController
  def index
    @decomps = Decomp.all
  end

  def show
    @decomp = Decomp.find(params[:id])
  end

  def new
    @decomp = Decomp.new
  end

  def create
    @decomp = Decomp.new(decomp_params)

    if @decomp.save
      redirect_to decomp_url(@decomp), notice: t(".success")
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def decomp_params
    params.require(:decomp).permit(:topic)
  end
end
