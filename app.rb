require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = params.values.to_a
    "#{words}"
  end

  get '/:operation/:number1/:number2' do

  end

end
