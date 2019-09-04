require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    mystring = ""
    2.times do
      @phrases = params[:phrase].to_s
    end
      #"#{params[:phrase]}"
    "#{@phrases}"
  end
end
