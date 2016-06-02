module TinyRails
  class Router::Route
    attr_reader :app

    def initialize(path, app)
      @path = path
      @app = app
    end

    def match?(path)
      @path == path
    end
  end
end
