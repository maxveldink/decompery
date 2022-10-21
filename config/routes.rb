# typed: strict
# frozen_string_literal: true

Rails.application.routes.draw do
  root "decomps#index"

  resources :decomps
end
