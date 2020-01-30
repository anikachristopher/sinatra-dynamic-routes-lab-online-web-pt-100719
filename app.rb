require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name_reversed = params[:name].reverse
    "#{@name_reversed}"
  end
  
  get '/square/:number' do
    @number_squared = params[:number].to_i * params[:number].to_i
    "#{@number_squared}"
  end
  
  get '/say/:number/:phrase' do
  end
  
  get 
  
  get '/:operation/:number1/:number2' do
  end
end