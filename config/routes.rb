Rails.application.routes.draw do
  


  get "search" => "search#create", as: :search

  
  #este el el resource del nuevo controlador que hice
  resources :pgallery

  #esto no jala :v creo
  get 'profes' => 'pgallery#index', as: :profes
 # get 'profeperfil' => 'pgallery#show', as: :profeperfil 
  # get 'profesors/index'
  


  

      
  
  root 'home#index'
  #resources :profesors
  #los devise de alumnos y profesores
  devise_for :alumnos, path: 'alumnos',controllers: { sessions: 'alumnos/sessions' }
  devise_for :profesors, path: 'profesors',controllers: {sessions: 'profesors/sessions' }



  resources :clases
  resources :alumno_actividads
  resources :actividad_instructors
  resources :instructors
  resources :actividad_extras
  resources :materia
  resources :clase_alumnos
  #no se de donde vergas salio 'motivacion'
  resources :clasesmotivacion

  #perfil de alumnos
  get "perfil" => "alumnos#perfil", as: :perfil


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
