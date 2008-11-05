# Add your custom routes here.  If in config/routes.rb you would 
# add <tt>map.resources</tt>, here you would add just <tt>resources</tt>

# resources :administrate_me_users

namespace(:administration) do |administration|
  administration.root :controller => 'users'
  administration.resources :users
  administration.resources :roles
end
