require_relative 'tiny_rails/application'
require_relative 'tiny_rails/controller'
require_relative 'tiny_rails/renderer'
require_relative 'tiny_rails/router'
require_relative 'tiny_rails/router/route'

module TinyRails
  def self.root
    File.expand_path('../../', __FILE__)
  end
end
