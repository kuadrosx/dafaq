Dafaq::Engine.routes.draw do
   resources :faqs
   root :to => 'faqs#index'
end
