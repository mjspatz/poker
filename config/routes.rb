Rails.application.routes.draw do

  root 'poker#deal'

  match ':controller(/:action(/:id))', :via => :get
  
end
