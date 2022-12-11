Rails.application.routes.draw do
  root "home#index"

  get '/knight', to: 'home#knight'
  get '/mage', to: 'home#mage'
  get '/medusa', to: 'home#medusa'
  get '/jinn', to: 'home#jinn'

  get '/ultimateteam1', to: 'home#ultimate_team_1'
  get '/ultimateteam2', to: 'home#ultimate_team_2'

  get '/killteam1', to: 'home#killteam1'
  get '/killteam2', to: 'home#killteam2'
end
