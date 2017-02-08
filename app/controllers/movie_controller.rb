class MovieController < ApplicationController
  def index
    @list_of_movies = Movie.all

    render("/movie/movie.html.erb")
  end

  def show
    @id = params["id"]
    @title = Movie.find(@id).title
    @year = Movie.find(@id).year
    @duration = Movie.find(@id).duration
    @description = Movie.find(@id).description
    @image_url = Movie.find(@id).image_url

    render("movie/movie_show.html.erb")
  end

  def new_form
    render("movie/create.html.erb")
  end

  def create_row
    m = Movie.new
    m.title = params[:the_title]
    m.year = params[:the_year]
    m.duration = params[:the_duration]
    m.description = params[:the_description]
    m.image_url = params[:the_source]
    m.save

    redirect_to("http://localhost:3000/movie")
  end

  def destroy
    @id = params["id"]
    m = Movie.find(@id).destroy
    m.destroy

    redirect_to("http://localhost:3000/movie")
  end

  def edit_form
    @id = params["id"]
    @title = Movie.find(@id).title
    @year =  Movie.find(@id).year
    @duration = Movie.find(@id).duration
    @description = Movie.find(@id).description
    @image_url =  Actor.find(@id).image_url
    render("movie/edit.html.erb")
  end

  def update_row
    @id = params["id"]
    @title = params[:the_title]
    @year =   params[:the_year]
    @duration = params[:the_duration]
    @description = params[:the_description]
    @image_url = params[:image_url]

    m = Movie.find(@id)
    m.title = @title
    m.year  = @year
    m.duration  = @duration
    m.description = @description
    m.image_url = @image_url
    m.save

    redirect_to("/movie/#{@id}")
  end
end
