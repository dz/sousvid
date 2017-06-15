Rails.application.routes.draw do
  get '/', :to => redirect("/overlays")
  get "/overlays", :controller => "overlay", :action => "active_index"
  get "/overlays/all", :controller => "overlay", :action => "all_index"
end
