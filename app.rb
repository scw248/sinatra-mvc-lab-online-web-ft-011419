require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
    erb :user_input
  end
  
  post "/piglatinize" do
    user_phrase = params[:user_phrase]
    @pig_latin_string = PigLatinizer.new
    @result = @pig_latin_string.piglatinize(user_phrase)
    erb :results
  end
end