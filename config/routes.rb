Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :basics do
    resources :basics, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :basics, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :basics, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
