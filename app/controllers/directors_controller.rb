class DirectorsController < ApplicationController

  def list
    @list_of_directors = Director.all

  render("list.html.erb")
  end

  def edit_form
    @i = Director.find(params[:id])
    @i.id = @i.id
    @i.name = @i.name
    @i.bio = @i.bio
    @i.dob = @i.dob
    @i.image_url = @i.image_url
    render("edit_form.html.erb")
  end

  def update_form
    @i = Director.find(params[:id])
    @i.name = params[:name]
    @i.bio = params[:bio]
    @i.dob = params[:dob]
    @i.image_url = params[:url]
    @i.save
    redirect_to("http://localhost:3000/directors/#{@i.id}")
  end

  def show
  @i = Director.find(params[:id])
  @id = @i.id
  @name = @i.name
  @bio = @i.bio
  @dob = @i.dob
  @image_url = @i.image_url

  render("show.html.erb")
  end

  def delete
  @i = Director.find(params[:id])
  @id = @i.id
  @name = @i.name
  render("delete.html.erb")
  end

  def destroy
  @i = Director.find(params[:id])
  @i.destroy
  redirect_to("http://localhost:3000/directors")
  end

  def new_form

  render("new_form.html.erb")
  end

  def create_row
    @i = Director.new
    @i.name = params[:name]
    @i.bio = params[:bio]
    @i.dob = params[:dob]
    @i.image_url = params[:url]
    @i.save
    redirect_to("http://localhost:3000/directors")
  end

end
