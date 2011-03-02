namespace :bootstrap do
      desc "Add the default user"
      task :default_user => :environment do
        Usuario.create( :nombre_usuario => 'rociovaldez', :password => 'abc123',:password_confirmation => 'abc123',:email => 'chivaldez@hotmail.com',:roles => ["admin",""] )
      end
    end