Rails.application.routes.draw do
  #get 'welcome/index'
  get '/', controller: 'welcome', action: :index

  get '/:name', controller: 'welcome', action: :show

  get 'lorem/:type', controller: 'welcome', action: :lorem

  get 'lorem/:type/:repeat', controller: 'welcome', action: :lorem


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
