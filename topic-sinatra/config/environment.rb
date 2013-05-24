env = ENV['RACK_ENV'] || "development"
config = YAML::load(File.open("config/database.yml"))[env]
ActiveRecord::Base.establish_connection(config)
if env == "development"
  require 'logger'
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end