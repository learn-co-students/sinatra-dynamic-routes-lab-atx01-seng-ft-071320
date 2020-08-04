require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end 

  get '/square/:number' do 
    @result = params[:number].to_i * params[:number].to_i
    @result.to_s
  end 

  get '/say/:number/:phrase' do 
    @result = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do 
      @result += @phrase 
      @result += "\n"
    end 

    @result
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      @result = @num1 + @num2
      @result.to_s
    elsif @operation == "subtract"
      @result = @num1 - @num2
      @result.to_s
    elsif @operation == "multiply"
      @result = @num1 * @num2
      @result.to_s
    elsif @operation == "divide"
      @result = @num1 / @num2
      @result.to_s
    end 
  end 
end