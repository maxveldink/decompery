# typed: strict
# frozen_string_literal: true

Rails.application.routes.draw do
  mount GoodJob::Engine => "good_job"

  root "decomps#index"

  resources :decomps, only: %i[index show new create edit update] do
    resources :stages, only: %i[new create destroy]
  end

  mount Lookbook::Engine, at: "/lookbook" if Rails.env.development?
end
