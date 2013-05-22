env = ENV['RACK_ENV'] || "development"
config = YAML::load(File.open(File.expand_path("../database.yml", __FILE__)))[env]
ActiveRecord::Base.establish_connection(config)
if env == "development"
  require 'logger'
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end