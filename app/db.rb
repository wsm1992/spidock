module Spidock
  class DB
    def self.init
      project_root = File.dirname(File.absolute_path(__FILE__)) + '/../'
      Dir.glob(project_root + "/app/models/*.rb").each{|f| require f}
      connection_details = YAML::load(File.open( project_root +'/config/database.yml'))
      env = ENV['APP_ENV']
      ActiveRecord::Base.establish_connection(connection_details[env])
    end
  end
end
