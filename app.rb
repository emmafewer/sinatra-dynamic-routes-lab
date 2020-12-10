require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    username = params[:name]
    backwards = username.reverse
    "#{backwards}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    squared = number*number
    "#{squared}"
  end 

  get '/say/:number/:phrase' do 
    number = params[:number].to_i
    phrase = params[:phrase]
    # string = phrase * number
    string = number.times.collect{phrase}
    "#{string}"
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end 

  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    add = num1+num2
    subtract = num1-num2
    multiply = num1*num2 
    divide = num1/num2
    "#{add.to_s} #{subtract.to_s} #{multiply.to_s} #{divide.to_s}"
  end

end