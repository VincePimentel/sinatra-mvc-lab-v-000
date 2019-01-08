require_relative 'config/environment'

class App < Sinatra::Base
  get "/piglatinize" do
    erb :user_input
  end

  post "/piglatinize" do
    @word = PigLatinizer.new(params[:text])

    erb :pigify
  end
end
