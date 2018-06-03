Rails.application.routes.draw do

root 'pages#landing'
get 'projects/wheresmytee'
get 'projects/coastercrunch'
get 'projects/inteum'
get 'projects/felixcalis'
get 'projects/vaibhavgupta'
get 'projects/crkannan'
get 'projects/amazon'
get 'projects/ukgas'
get 'projects/data_discovery'
get 'projects/regression'
get 'projects/final_stats'
get 'projects/rm1'
get 'projects/foundations'
get 'projects/sketches'

resources :contacts, only: [:new, :create]
    get 'contactsindex', to: 'contacts#index'

end
