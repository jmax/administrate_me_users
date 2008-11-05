class Administration::UsersController < Administration::CoreController
  administrate_me do |admin|
    admin.search :name, :login, :email    
    admin.except :new, :edit
  end
end
