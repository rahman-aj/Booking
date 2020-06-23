Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :mentors
      resources :mentees
    end
  end
end
