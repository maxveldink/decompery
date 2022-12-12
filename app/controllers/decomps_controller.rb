# typed: false
# frozen_string_literal: true

class DecompsController < ApplicationController
  before_action :check_decomp_access, only: %i[show edit update]

  def show
    put_decomp_in_session
    Participation.find_or_create_by(decomp: @decomp, user: helpers.current_user)
  end

  def new
    @decomp = Decomp.new
  end

  def edit; end

  def create
    @decomp = Decomp.new(decomp_params)

    if @decomp.save
      put_decomp_in_session
      redirect_to decomp_url(@decomp), notice: t(".success")
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @decomp.update(decomp_params)
      redirect_to decomp_url(@decomp)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def check_decomp_access
    @decomp = Decomp.find_by(id: params[:id])
    passed_token = params[:invite_token] || session[:last_decomp_invite_token]

    redirect_to root_path, notice: t(".missing") if @decomp.blank? || @decomp.invite_token != passed_token
  end

  def decomp_params
    params.require(:decomp).permit(:topic)
  end

  def put_decomp_in_session
    session[:last_decomp_id] = @decomp.id
    session[:last_decomp_invite_token] = @decomp.invite_token
  end
end
