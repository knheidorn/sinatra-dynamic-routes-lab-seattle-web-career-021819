require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse!
  end

  get '/square/:number' do
    @square = params[:number].to_i**2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    final = ""
    @number.times do
      final += "#{params[:phrase]}\n"
    end
    final
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if operation == "add"
      sum = @num1 + @num2
      sum.to_s
    elsif operation == "subtract"
      sub = @num1 - @num2
      sub.to_s
    elsif operation == "multiply"
      mul = @num1 * @num2
      mul.to_s
    elsif operation == "divide"
      div = @num1 / @num2
      div.to_s
    else
      "Not valid operator"
    end
  end

end
