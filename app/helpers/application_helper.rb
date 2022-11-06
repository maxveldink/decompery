# typed: false
# frozen_string_literal: true

require "anonymous_user"
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

  sig { returns(AnonymousUser) }
  def anonymous_user
    if session[:anonymous_user].present?
      AnonymousUser.from_hash(session[:anonymous_user])
    else
      session[:anonymous_user] = anonomize
    end
  end

  sig { returns(AnonymousUser) }
  def anonomize
    AnonymousUser.new(name: AnonymousNameGenerator.new(date: Time.zone.today).call)
  end
end
