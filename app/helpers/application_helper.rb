# typed: false
# frozen_string_literal: true

require "anonymous_name_generator"

module ApplicationHelper
  extend T::Sig

  sig { params(decomp: Decomp).returns(String) }
  def invite_path(decomp)
    decomp_path(decomp) + "?invite_token=#{decomp.invite_token}"
  end

  sig { params(decomp: Decomp).returns(String) }
  def invite_url(decomp)
    decomp_url(decomp) + "?invite_token=#{decomp.invite_token}"
  end

  sig { returns(User) }
  def current_user
    if session[:current_user_id].present?
      User.find(session[:current_user_id])
    else
      user = anonomize
      session[:current_user_id] = user.id
      user
    end
  end

  sig { returns(User) }
  def anonomize
    User.create(name: AnonymousNameGenerator.new(date: Time.zone.today).call)
  end
end
