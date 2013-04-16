Rails.application.routes.draw do

  match 'spoons/jelly' => 'spoons#welcome', :via => :get, :as => 'spoons_welcome'
  match 'spoons/:id/jelly' => 'spoons#jelly', :via => :get, :as => 'systems_jelly'

end
