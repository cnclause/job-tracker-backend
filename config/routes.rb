Rails.application.routes.draw do
  resources :users
  resources :jobs
  resources :job_trackers, only:[:index, :create, :update]
  resources :job_notes, only:[:index, :create, :update]
  
end
