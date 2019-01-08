require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/" do
    @word = PigLatinizer.new(params[:text])

    erb :pigify
  end
end
