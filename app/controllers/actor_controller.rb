class ActorController < ApplicationController
  def index
    @list_of_actors = Actor.all

    render("/actor/actor.html.erb")
  end

  def show
    @id = params["id"]
    @name = Actor.find(@id).name
    @bio = Actor.find(@id).bio
    @dob = Actor.find(@id).dob
    @image_url = Actor.find(@id).image_url

    render("actor/actor_show.html.erb")
  end

  def new_form
    render("actor/create.html.erb")
  end

  def create_row
    a = Actor.new
    a.name = params[:the_name]
    a.dob = params[:the_dob]
    a.bio = params[:the_bio]
    a.image_url = params[:the_source]
    a.save

    redirect_to("http://localhost:3000/actor")
  end

  def destroy
    @id = params["id"]
    a = Actor.find(@id).destroy
    a.destroy

    redirect_to("http://localhost:3000/actor")
  end

  def edit_form
    @id = params["id"]
    @name = Actor.find(@id).name
    @dob =  Actor.find(@id).dob
    @bio =  Actor.find(@id).bio
    @image_url =  Actor.find(@id).image_url
    render("actor/edit.html.erb")
  end

  def update_row
    @id = params["id"]
    @name = params[:the_name]
    @dob = params[:the_dob]
    @bio = params[:the_bio]
    @image_url = params[:image_url]

    a = Actor.find(@id)
    a.name = @name
    a.dob = @dob
    a.bio = @bio
    a.image_url = @image_url
    a.save

    redirect_to("/actor/#{@id}")
  end


end
