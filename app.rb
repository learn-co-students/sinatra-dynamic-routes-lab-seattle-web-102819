require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].reverse
   
  end

  get "/square/:number" do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end 

  get '/say/:number/:phrase' do 
    #binding.pry 
    result = ''
   params[:number].to_i.times do 
    result += params[:phrase] 
   end
   result
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 
     
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    result = ''
    
   # when add
   #  "#{@number1}+#{@number2}"
   # when subtract
   #   "#{@number1}-#{@number2}"
   # when multiply
   #   "#{@number1}*#{@number2}"
   # when divide
   #   "#{@number1}/#{@number2}"
   # end 
   case @operation
     when 'add'
      sum = @number1+@number2
      result += sum.to_s
  
    when 'subtract'
      subtract = @number1-@number2
      result += subtract.to_s
    when 'multiply'
      multiply = @number1*@number2
      result += multiply.to_s
    when 'divide'
      divide = @number1/@number2
      result += divide.to_s
    end
    result
  end

end 