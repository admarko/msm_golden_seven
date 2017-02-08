Rails.application.routes.draw do
  get("/",                    { :controller => "director", :action => "index" })
  get("/director",            { :controller => "director", :action => "index" })
  get("/actor",               { :controller => "actor", :action => "index" })
  get("/movie",               { :controller => "movie", :action => "index" })

  #CREATE
  get("/director/new",        { :controller => "director", :action => "new_form" })
  get("/create_director",     { :controller => "director", :action => "create_row" })

  get("/actor/new",           { :controller => "actor", :action => "new_form" })
  get("/create_actor",        { :controller => "actor", :action => "create_row" })

  get("/movie/new",           { :controller => "movie", :action => "new_form" })
  get("/create_movie",        { :controller => "movie", :action => "create_row" })

  #UPDATE
  get("/director/:id/edit",   { :controller => "director", :action => "edit_form" })
  get("/update_director/:id", { :controller => "director", :action => "update_row" })

  get("/actor/:id/edit",      { :controller => "actor", :action => "edit_form" })
  get("/update_actor/:id",    { :controller => "actor", :action => "update_row" })

  get("/movie/:id/edit",      { :controller => "movie", :action => "edit_form" })
  get("/update_movie/:id",    { :controller => "movie", :action => "update_row" })


  #READ
  get("/director",            { :controller => "director", :action => "index" })
  get("/director/:id",        { :controller => "director", :action => "show" })

  get("/actor",               { :controller => "actor", :action => "index" })
  get("/actor/:id",           { :controller => "actor", :action => "show" })

  get("/movie",               { :controller => "movie", :action => "index" })
  get("/movie/:id",           { :controller => "movie", :action => "show" })

  #DELETE
  get("/delete_director/:id", { :controller => "director", :action => "destroy" })
  get("/delete_actor/:id",    { :controller => "actor", :action => "destroy" })
  get("/delete_movie/:id",    { :controller => "movie", :action => "destroy" })

end
