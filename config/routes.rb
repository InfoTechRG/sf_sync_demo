SfSyncDemo::Application.routes.draw do
  resources :accounts
  root :to => 'accounts#index'
  
  mount SalesforceArSync::Engine => '/'
end
