require "sinatra/reloader" if development?
require "sass/plugin/rack"

Sass::Plugin.options[:style] = :compact
use Sass::Plugin::Rack

register Sinatra::AssetPack
assets do
  js :application, [
    '/js/app.js',
    '/bower_components/jquery/dist/jquery.min.js',
    '/bower_components/bootstrap/dist/js/bootstrap.min.js'
  ]
  css :application, [
    '/bower_components/bootstrap/dist/css/bootstrap.min.css',
    '/stylesheets/style.css'
  
  ]
  js_compression :jsmin
  css_compression :simple
end

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

configure do
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET']||"Anfield"
  set :views, File.join(APP_ROOT, "app", "views")
end

["models", "controllers", "helpers"].each do |folder|Dir[APP_ROOT.join("app", folder, "*.rb")].each {|file| require file}
end

CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY'],
    aws_secret_access_key: ENV['AWS_SECRET_KEY'],
    region: 'eu-west-1'
  }

  if development?
    config.storage = :file
    config.enable_processing = false
    config.root = "#{APP_ROOT}/tmp"
  else
    config.storage = :fog
  end

  config.cache_dir = "#{APP_ROOT}/tmp/uploads" 
  config.fog_directory    = ENV['AWS_BUCKET_NAME']
end
