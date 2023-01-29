# typed: true
# frozen_string_literal: true

class ParticipationsController < ApplicationController
  before_action :set_decomp_and_user

  def create
    if @user && @decomp
      participation = Participation.create_or_find_by(decomp: @decomp, user: @user)

      render json: { participation_id: participation.id }
    else
      head :bad_request
    end
  end

  def destroy
    Participation.find_by(decomp: @decomp, user: @user)&.destroy
  end

  private

  def set_decomp_and_user
    @decomp = Decomp.find_by(id: participation_params[:decomp_id])
    @user = User.find_by(id: participation_params[:user_id])
  end

  def participation_params
    params.permit(:decomp_id, :user_id)
  end
end
