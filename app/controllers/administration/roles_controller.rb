class Administration::RolesController < Administration::CoreController
  administrate_me do |admin|
    admin.search :name
  end
end
