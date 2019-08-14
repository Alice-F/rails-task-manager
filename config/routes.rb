Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# CRUD (verbes : post / get / update / delete)

# Read all the tasks => action index
get '/tasks', to: 'tasks#index'

# create one task (get un form puis poster) => action new puis action create
get '/tasks/new', to: 'tasks#new'
post '/tasks', to: 'tasks#create'

# Read one task => action show
get '/tasks/:id', to: 'tasks#show', as: :task

# update one task (get un form puis patcher) => action edit puis action update
get '/tasks/:id', to: 'tasks#edit'
patch '/tasks/:id', to: 'tasks#update'

# delete one task => action delete
delete '/tasks/:id', to: 'tasks#delete'
end
