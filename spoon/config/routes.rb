Rails.application.routes.draw do

  match 'spoons/:id/gss' => 'spoons#gss', :via => :get, :as => 'spoons_gss'
  match 'systems/:id/gss' => 'spoons#gss', :via => :get, :as => 'systems_gss'

end
