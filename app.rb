require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name_reversed = params[:name].reverse
    "#{@name_reversed}"
  end

  get '/square/:number' do
    @square_num = params[:number].to_i ** 2
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    @phrase_n = params[:phrase] * params[:number].to_i
    "#{@phrase_n}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #binding.pry
    @concat_words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    @spaced_words = @concat_words.join(' ')
    "#{@spaced_words}."
  end

  get '/:operation/:number1/:number2' do
    @num_operations =
    if params[:operation] == "add"
      params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "divide"
      params[:number1].to_i / params[:number2].to_i
    else params[:operation] == "multiply"
      params[:number1].to_i * params[:number2].to_i
    end
    "#{@num_operations}"
  end
end