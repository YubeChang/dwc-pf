Rails.application.routes.draw do
devise_for :users, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions:      'public/sessions'
}

devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

namespace :public, path: "/" do
  root to:                   "homes#top"
  get "/about"            => "homes#about"
  resources "users" do
    member do
      get :following, :followers, :confirm
    end
  end
  resources "posts"
  resources "stores"

end

namespace :admin do
  resources "users"
  resources "tags"
  resources "posts"
  resources "stores"
end

end
