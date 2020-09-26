# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sales, only: %i[index show]
end
