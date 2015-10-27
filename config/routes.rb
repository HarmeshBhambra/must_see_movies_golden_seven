Rails.application.routes.draw do

  get("/directors", { :controller => "directors", :action => "list"})
  get("/directors/new_form", { :controller => "directors", :action => "new_form"})
  get("/directors/create_row", { :controller => "directors", :action => "create_row"})
  get("/directors/edit_form/:id", { :controller => "directors", :action => "edit_form"})
  get("/directors/update_form/:id", { :controller => "directors", :action => "update_form" })
  get("/directors/delete/:id", { :controller => "directors", :action => "delete"})
  get("/directors/destroy/:id", { :controller => "directors", :action => "destroy"})
  get("/directors/:id", { :controller => "directors", :action => "show"})
end
