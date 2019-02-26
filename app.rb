require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
    erb :user_input
  end
  
  post "/" do
    string = params[:string]
    @pig_latin_string = PigLatinizer.new(string)
    erb :results
  end
end