class UsersController < ApplicationController

  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    @user = User.create(params)
    erb :index
  end

  # get '/users/portfolio' do
  #   erb :'users/portfolio'
  # end
end