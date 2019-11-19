require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    # return name backwards
    reversed_name = @name.reverse
    "#{reversed_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    # return the number squared
    squared = @number * @number
    "#{squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    # return phrase @number amount of times
    return_phrase = ''
    @number.times do
      return_phrase += @phrase
    end
    return_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    # returns a string containing all five words
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    # return a string of the operation between num1 && num2
    if @operation == 'add'
      result = (@number1 + @number2).to_s
    elsif @operation == 'subtract'
      result = (@number1 - @number2).to_s
    elsif @operation == 'multiply'
      result = (@number1 * @number2).to_s
    elsif @operation == 'divide'
      result = (@number1 / @number2).to_s
    end
    # result.to_S
  end
end