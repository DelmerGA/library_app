LibraryApp::Application.routes.draw do
  resources :patrons, :books, :authors
end
