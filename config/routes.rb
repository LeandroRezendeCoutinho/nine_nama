# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'sales#index'
  resources :sales, only: %i[index show]
  match 'import_sales', to: 'sales#import', via: %i[get post]
end
