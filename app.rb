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
  
  # get '/say/:number/:phrase' do
    
  # end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
      when "subtract"
        (@num1 - @num2).to_s
      when "add"
        (@num1 + @num2).to_s
      when "multiply"
        (@num1 * @num2).to_s
      when "divide"
        (@num1 / @num2).to_s
    end
  end
  end
end