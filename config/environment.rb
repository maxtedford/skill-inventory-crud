require 'bundler'
Bundler.require

require 'pathname'
APP_ROOT = Pathname.new(File.expand_path("../../", __FILE__))

Dir[APP_ROOT.join("app", "controllers", "*.rb")].each {|file| require file}

Dir[APP_ROOT.join("app", "models", "*.rb")].each {|file| require file}

class SkillInventoryApp < Sinatra::Base
  set :method_override => true
  set :root, APP_ROOT.to_path
  set :views, File.join(SkillInventoryApp.root, "app", "views")
  set :public_folder, File.join(SkillInventoryApp.root, "app", "public")
end
