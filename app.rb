require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @user_name = params[:name]
    @reverse_name = @user_name.reverse
    "#{@reverse_name}"
  end

  get "/square/:number" do
    square_num = params[:number].to_i * params[:number].to_i
    "#{square_num}"
  end

  get "/say/:number/:phrase" do
    "#{params[:phrase]}" * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      add = params[:number1].to_i + params[:number2].to_i
      "#{add}"
    elsif params[:operation] == "subtract"
    subtract = params[:number1].to_i - params[:number2].to_i
    "#{subtract}"
    elsif params[:operation] == "multiply"
      multiply = params[:number1].to_i * params[:number2].to_i
      "#{multiply}"
    elsif params[:operation] == "divide"
      divide = params[:number1].to_i / params[:number2].to_i
      "#{divide}"
    end
  end

end