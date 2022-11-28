# typed: strict
# frozen_string_literal: true

Rails.application.routes.draw do
  mount GoodJob::Engine => "good_job"

  root "pages#home"

  resources :decomps, only: %i[index show new create edit update] do
    resources :stages, only: %i[new create destroy]

    resources :estimates, only: %i[create] do
      delete :clear, on: :collection
    end
  end
end
