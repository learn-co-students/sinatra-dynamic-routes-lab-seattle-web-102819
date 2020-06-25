require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}!"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    solution = @number * @number
    "#{solution.to_s}!"
  end

  get "/say/:number/:phrase" do
    solution = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    
    @number.times do
      solution += @phrase
    end
    solution
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    arr = []
    arr << params[:word1]
    arr << params[:word2]
    arr << params[:word3]
    arr << params[:word4]
    arr << params[:word5]
    
    solution = arr.join(" ")
    solution + "."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @oper = params[:operation]
    case @oper
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