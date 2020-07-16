require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    string = params[:string]
    #instance variables are visible to erb files that are being rendered
    #not visible to other controller methods in the controller(class App)
    @reversed_string = string.reverse

    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc',
     'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end