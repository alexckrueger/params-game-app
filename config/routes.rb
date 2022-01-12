Rails.application.routes.draw do
  get "/name_game" => "name_games#name"

  get "/guess_a_number" => "name_games#number"

  get "/sum_of_numbers/:num1/:num2" => "number_games#sum"

  get "/guessing_numbers/:number" => "number_games#guessing_numbers"

  get '/stories', to: redirect('/guess_a_number')

  get "testing/*options" => "number_games#test"

end
