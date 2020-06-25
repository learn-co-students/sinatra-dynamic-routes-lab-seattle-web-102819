require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @x = params[:number].to_i
    "#{@x * @x}"
  end
  
  get "/say/:number/:phrase" do
    @x = params[:number].to_i
    @str = params[:phrase]
    "#{@str * @x}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @a = params[:word1]
    @b = params[:word2]
    @c = params[:word3]
    @d = params[:word4]
    @e = params[:word5]
    "#{@a} #{@b} #{@c} #{@d} #{@e}."
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @x = params[:number1].to_i
    @y = params[:number2].to_i
    if @op == "add"
      "#{@x + @y}"
    elsif @op == "subtract"
      "#{@x - @y}"
    elsif @op == "multiply"
      "#{@x * @y}"
    elsif @op == "divide"
      "#{@x / @y}"
    end
  end

end