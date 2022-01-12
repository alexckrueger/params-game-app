class NameGamesController < ApplicationController

  def name
    name = params["name"]
    if name.first == "a"
      render json: "Hey, your name starts with the first letter of the alphabet!"
    else
      render json: "You have an inferior name, sorry..."
    end
  end

  def number
    correct_number = 36
    number = params["number"].to_i

    if number == 0
      render json: "Search for a number! Hint: it aint 0."
    elsif number > correct_number
      render json: "That number is too high!"
    elsif number < correct_number
      render json: "That number is too low :("
    elsif number == correct_number
      render json: "YOU WIN!"
    end


  end

end
