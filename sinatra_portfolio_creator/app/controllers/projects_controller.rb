class ProjectsController < ApplicationController

  get '/projects' do
    if logged_in?

      @projects = Project.all
      #binding.pry
      erb :'/projects/index'
    else
      redirect '/login'
    end
  end

  get '/projects/new' do
    erb :'/projects/new'
  end

  post '/projects' do
    @project = Project.new(title: params[:project_title], 
      description: params[:project_description], 
      user_id: current_user.id,
      javascript: params[:java],
      html_and_css: params[:html_and_css],
      sql: params[:sql],
      python: params[:python],
      java: params[:java],
      ruby: params[:ruby],
      swift: params[:swift],
      c_sharp: params[:c_sharp],
      c: params[:c],
      php: params[:php],
      sinatra: params[:sinatra],
      start_date: params[:project_start_date],
      end_date: params[:project_end_date]
    )
    if @project.save
      redirect '/projects'
    else
      erb :‘posts/new’
    end
 
  end

end