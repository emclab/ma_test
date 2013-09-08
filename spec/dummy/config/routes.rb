Rails.application.routes.draw do

  #root :to => 'user_menus#index'
  get 'user_menus/index'

  mount MaTest::Engine => "/ma_test"
  
  match '/user_menus', :to => 'user_menus#index'
  
  #root :to => 'user_menus/index'
end
