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

  get '/projects/:id/edit' do
    @project = Project.find_by_id(params[:id])
    if (User.find_by(id: @project.user_id) == current_user)
      erb :'projects/edit'
    else 
      redirect '/projects'
    end
    end

  post '/projects' do

    @project = Project.new(title: params[:project_title], 
      description: params[:project_description], 
      user_id: current_user.id,
      javascript: params[:java].nil?,
      html_and_css: params[:html_and_css].nil?,
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
    #binding.pry
    if @project.save
      redirect '/projects'
    else
      erb :‘posts/new’
    end
  end

  patch '/projects/:id' do
      @project = Project.find_by_id(params[:id])
      if (User.find_by(id: @project.user_id) == current_user)
        @project.update(
          title: params[:project_title], 
          description: params[:project_description],
          javascript: params[:javascript],
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
      end
      redirect '/projects'
  end

  delete '/projects/:id' do
    @project = Project.find_by_id(params[:id])
    #binding.pry
    if (User.find_by(id: @project.user_id) == current_user)
      @project.delete
    end
    redirect '/projects'
  end

  get '/projects/:id' do
    
  end

end