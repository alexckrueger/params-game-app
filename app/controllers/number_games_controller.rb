class NumberGamesController < ApplicationController

  def sum
    num1 = params[:num1]
    num2 = params[:num2]
    sum = num1.to_i + num2.to_i
    render json: {message: sum}
  end

  def guessing_numbers
    correct_number = 36
    number = params[:number].to_i

    if number > correct_number
      message = "That number is too high!"
    elsif number < correct_number
      message = "Too low :("
    elsif number == correct_number
      message = "Yayyyy"
    end

    render json: {message: message}
  end

  def test
    options = params[:options]
    additions = params["additional"]
    render json: {message: options, message2: additions}
  end


end
