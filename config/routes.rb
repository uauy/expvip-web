Rails.application.routes.draw do
  #map.root :controller => 'wellcome', :action => :default
  #get 'wellcome/default'
  root 'wellcome#default'
  get 'wellcome/search_gene'

 # resources :expression_values
 # resources :type_of_values
 # resources :meta_experiments
 # resources :gene_sets
  resources :genes  do
    collection do
      get 'autocomplete'
      get 'heatmap'
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'expression_values/gene/:gene_id' => 'expression_values#gene'
  get 'expression_values/inchworm/prepare' => 'expression_values#inchworm'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
#  resources :species
#  resources :studies
#  resources :varieties
#  resources :tissues
#  resources :experiments
#  resources :experiment_groups

  
end
