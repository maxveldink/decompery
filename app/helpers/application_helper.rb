# typed: strict
# frozen_string_literal: true

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
end
