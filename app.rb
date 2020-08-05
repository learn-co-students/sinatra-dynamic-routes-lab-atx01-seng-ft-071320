require_relative 'config/environment'
require'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @count = @number**2
    "#{@count}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @say = ""
    @number.times do
      @say += @phrase
      @say += "\n"
    end
    "#{@say}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      @count = (@number1 + @number2)
    elsif @operation == "subtract"
      @count = (@number1 - @number2)
    elsif @operation == "multiply"
      @count = (@number1 * @number2)
    else @operation == "divide"
      @count = (@number1 / @number2)
    end
    "#{@count.to_s}"
  end

end