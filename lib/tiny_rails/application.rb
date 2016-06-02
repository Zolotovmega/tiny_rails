module TinyRails
  class Application
    def call(env)
      app = self.class.routes.match(env['PATH_INFO'])
      app.call
      # # if env['PATH_INFO'] == '/videos'
      # #   VideosController.new.index
      # # else
      #   [200, { 'Content-Type' => 'text/html' }, ['FIXME']]
      # # end
    end

    def self.routes
      @routes ||= Router.new
    end
  end
end
