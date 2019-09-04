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
    params[:number].to_i.times do
      mystring = mystring + params[:phrase].to_s + "\n"
    end
      #"#{params[:phrase]}"
    "#{mystring}"
  end
end
