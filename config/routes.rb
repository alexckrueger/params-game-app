Rails.application.routes.draw do
  get "/name_game" => "name_games#name"

  get "/guess_a_number" => "name_games#number"
end
