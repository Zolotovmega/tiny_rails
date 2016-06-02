require 'erb'

module TinyRails
  class Render
    def self.call(view_path, context)
      ERB.new(File.read(view_path)).result(context)
    end
  end
end
