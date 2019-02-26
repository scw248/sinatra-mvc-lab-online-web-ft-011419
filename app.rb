require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
    erb :user_input
  end
  
  post "/piglatinize" do
    user_phrase = params[:user_phrase]
    @pig_latin_string = PigLatinizer.new(user_phrase)
    
    erb :results
  end
end