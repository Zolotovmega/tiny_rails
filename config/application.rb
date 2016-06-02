require_relative 'boot'

class VideosApplication < TinyRails::Application
  routes.draw do
    map 'videos', to: 'videos#index'
    map '/videos', to: VideosController.new.method(:index)
    map '/any', to: -> { [200, { 'Content-Type' => 'text/html' }, ['FIXME']] }
  end
end
