require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    @squared_num = @num.to_i * @num.to_i
    @squared_num.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number]
    @ans = @phrase * @num.to_i 
    @ans.to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    @sentence = "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
    @sentence
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    case @op
    when 'add'
      ans = @num1.to_i + @num2.to_i 
      return ans.to_s 
    when 'subtract' 
      ans = @num1.to_i - @num2.to_i 
      return ans.to_s 
    when 'multiply'
      ans = @num1.to_i * @num2.to_i 
      return ans.to_s 
    when 'divide'
      ans = @num1.to_i / @num2.to_i 
      return ans.to_s 
    end

  end


end