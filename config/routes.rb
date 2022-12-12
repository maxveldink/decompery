# typed: strict
# frozen_string_literal: true

Rails.application.routes.draw do
  mount GoodJob::Engine => "good_job"

  root "pages#home"

  resources :decomps, only: %i[show new create edit update] do
    resources :stages, only: %i[new create destroy]

    resources :estimates, only: %i[create] do
      get :toggle, on: :collection
      delete :clear, on: :collection
    end

    resources :participations, only: %i[create destroy]
  end

  resources :users, only: %i[update] do
    post :regenerate_name, on: :member
  end
end
