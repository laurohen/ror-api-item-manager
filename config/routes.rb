Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  scope '/api' do
    get 'items/listforstatus/:status', to: 'items#listforstatus'
    resources :items, only: [:index, :show, :create, :update, :destroy] 
  end
end
