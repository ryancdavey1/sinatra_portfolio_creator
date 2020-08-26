class ProjectsController < ApplicationController

  get '/projects' do
    if logged_in?
      @projects = Project.all
      erb :'/projects/index'
    else
      redirect '/login'
    end
  end

  get '/projects/new' do
    erb :'/projects/new'
  end

  post '/projects' do
  end

end