Rails.application.routes.draw do
  # Index
  get("/", { :controller => "menus", :action => "index"})


  # Directors
  get("/directors", { :controller => "directors", :action => "list"})
  get("/directors/new_form", { :controller => "directors", :action => "new_form"})
  get("/directors/create_row", { :controller => "directors", :action => "create_row"})
  get("/directors/edit_form/:id", { :controller => "directors", :action => "edit_form"})
  get("/directors/update_form/:id", { :controller => "directors", :action => "update_form" })
  get("/directors/delete/:id", { :controller => "directors", :action => "delete"})
  get("/directors/destroy/:id", { :controller => "directors", :action => "destroy"})
  get("/directors/:id", { :controller => "directors", :action => "show"})

  # Actors
  get("/actors", { :controller => "actors", :action => "list"})
  get("/actors/new_form", { :controller => "actors", :action => "new_form"})
  get("/actors/create_row", { :controller => "actors", :action => "create_row"})
  get("/actors/edit_form/:id", { :controller => "actors", :action => "edit_form"})
  get("/actors/update_form/:id", { :controller => "actors", :action => "update_form" })
  get("/actors/delete/:id", { :controller => "actors", :action => "delete"})
  get("/actors/destroy/:id", { :controller => "actors", :action => "destroy"})
  get("/actors/:id", { :controller => "actors", :action => "show"})

  # Movies
  get("/movies", { :controller => "movies", :action => "list"})
  get("/movies/new_form", { :controller => "movies", :action => "new_form"})
  get("/movies/create_row", { :controller => "movies", :action => "create_row"})
  get("/movies/edit_form/:id", { :controller => "movies", :action => "edit_form"})
  get("/movies/update_form/:id", { :controller => "movies", :action => "update_form" })
  get("/movies/delete/:id", { :controller => "movies", :action => "delete"})
  get("/movies/destroy/:id", { :controller => "movies", :action => "destroy"})
  get("/movies/:id", { :controller => "movies", :action => "show"})
end
