Rails.application.routes.draw do

  devise_for :users

  mount Dafaq::Engine => "/faq"
end
