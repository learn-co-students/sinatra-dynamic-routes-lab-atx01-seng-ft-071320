require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get '/reversename/:name' do
      erb :reverse
    end

    get '/square/:number' do
      erb :square
    end

    get '/say/:number/:phrase' do
      erb :sayxtimes
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      erb :say5words
    end

    get '/:operation/:number1/:number2' do
      erb :operation
    end
end