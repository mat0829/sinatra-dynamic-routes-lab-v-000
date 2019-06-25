require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end
  
  get "/square/:number" do
    @square_number = params[:number].to_i ** 2
    "#{@square_number}"
  end
  
  get "/say/:number/:phrase" do
    say_phrase = ""
    (params[:number].to_i).times {
      say_phrase += params[:phrase]
    }
    say_phrase
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    combined_string = params[:word1] + params[:word1] + params[:word1] + params[:word1] + params[:word1]
    combined_string
  end
  
end