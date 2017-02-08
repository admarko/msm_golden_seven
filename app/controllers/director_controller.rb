class DirectorController < ApplicationController
  def index
    @list_of_directors = Director.all

    render("/director/director.html.erb")
  end

  def show
    @id = params["id"]
    @name = Director.find(@id).name
    @bio = Director.find(@id).bio
    @dob = Director.find(@id).dob
    @image_url = Director.find(@id).image_url

    render("director/director_show.html.erb")
  end

  def new_form
    render("director/create.html.erb")
  end

  def create_row
    d = Director.new
    d.name = params[:the_name]
    d.dob = params[:the_dob]
    d.bio = params[:the_bio]
    d.image_url = params[:the_source]
    d.save

    redirect_to("http://localhost:3000/director")
  end

  def destroy
    @id = params["id"]
    d = Director.find(@id).destroy
    d.destroy

    redirect_to("http://localhost:3000/director")
  end

  def edit_form
    @id = params["id"]
    @name = Director.find(@id).name
    @dob =  Director.find(@id).dob
    @bio =  Director.find(@id).bio
    @image_url =  Director.find(@id).image_url
    render("director/edit.html.erb")
  end

  def update_row
    @id = params["id"]
    @name = params[:the_name]
    @dob = params[:the_dob]
    @bio = params[:the_bio]
    @image_url = params[:image_url]

    d = Director.find(@id)
    d.name = @name
    d.dob = @dob
    d.bio = @bio
    d.image_url = @image_url
    d.save

    redirect_to("/director/#{@id}")
  end


end
