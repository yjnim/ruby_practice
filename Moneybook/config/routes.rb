Rails.application.routes.draw do
  
  get '/moneybook/index'
  post '/moneybook/moneyinput'
  get '/moneyinput' => 'moneybook#moneyinput'
  
end
