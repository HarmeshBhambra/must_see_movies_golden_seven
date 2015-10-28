class MoviesController < ApplicationController

  def list
    @list_of_movies = Movie.all

  render("list.html.erb")
  end

  def edit_form
    @i = Movie.find(params[:id])
    @i.id = @i.id
    @i.title = @i.title
    @i.year = @i.year
    @i.duration = @i.duration
    @i.description = @i.description
    @i.image_url = @i.image_url
    render("edit_form.html.erb")
  end

  def update_form
    @i = Movie.find(params[:id])
    @i.title = params[:title]
    @i.year = params[:year]
    @i.duration = params[:duration]
    @i.description = params[:description]
    @i.image_url = params[:url]
    @i.save
    redirect_to("http://localhost:3000/movies/#{@i.id}")
  end

  def show
    @i = Movie.find(params[:id])
    @id = @i.id
    @title = @i.title
    @i.year = @i.year
    @duration = @i.duration
    @description = @i.description
    @image_url = @i.image_url

    render("show.html.erb")
  end

  def delete
    @i = Movie.find(params[:id])
    @id = @i.id
    @title = @i.title
    render("delete.html.erb")
  end

  def destroy
    @i = Movie.find(params[:id])
    @i.destroy
    redirect_to("http://localhost:3000/movies")
  end

  def new_form

  render("new_form.html.erb")
  end

  def create_row
    @i = Movie.new
    @i.title = params[:title]
    @i.year = params[:year]
    @i.duration = params[:duration]
    @i.description = params[:description]
    @i.image_url = params[:url]
    @i.save
    redirect_to("http://localhost:3000/movies")
  end

end
