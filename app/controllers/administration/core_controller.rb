class Administration::CoreController < ApplicationController
  require_role "superuser"

  def app_name
    "Users administration"
  end
  
  def modules
    set_module :users
    set_module :roles
  end
end
