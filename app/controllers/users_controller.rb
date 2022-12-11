# typed: false
# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user

  def regenerate_name
    name = AnonymousNameGenerator.new(date: Time.zone.today).call

    @user.update(name:)

    respond_to do |format|
      format.turbo_stream { render :update }
      format.html { redirect_to(root_path) }
    end
  end

  def update
    @user.update(user_params)

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to(root_path) }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
