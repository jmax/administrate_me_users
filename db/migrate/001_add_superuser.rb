class AddSuperuser < ActiveRecord::Migration
  def self.up
    # Create superuser role
    superuser_role = Role.create(:name => 'superuser')
    
    # Create root user
    user = User.create do |u|
      u.email    = 'root@superuser.com'
      u.login    = 'root'
      u.password = u.password_confirmation = 'root'      
    end
    
    # Activate user
    user.register!
    user.activate!
    
    # Add admin role to admin user
    user.roles << superuser_role
  end

  def self.down
    Role.delete_all
    User.delete_all
  end
end
