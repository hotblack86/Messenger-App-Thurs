
namespace :db do 
    task :setup_dev do
        require './lib/message'
        require 'data_mapper'
    
        DataMapper.setup(:default, "postgres://localhost/MessengerApp_development")
        DataMapper.finalize
    end

    task :setup_test do
        require './lib/message'
        require 'data_mapper'
    
        DataMapper.setup(:default, "postgres://localhost/MessengerApp_test")
        DataMapper.finalize
    end

    desc 'Runs updates for development env'
    task :auto_upgrade => :setup_dev do
        puts 'Successful Upgrade!' if DataMapper.auto_upgrade!
    end
  
    desc 'Runs migrations for test env'
    task :auto_migrate => :setup_test do
        puts 'Successful Migration!' if DataMapper.auto_migrate!
    end

  

end