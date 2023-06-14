class Api::V1::GreetingsController < ApplicationController
  def show
    greeting = Greeting.order('RANDOM()').first
    render json: { message: greeting.message }
  end
end
