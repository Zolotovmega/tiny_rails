module TinyRails
  class Application
    def call(env)
      if env['PATH_INFO'] == '/videos'
        VideosController.new.index
      else
        [200, { 'Content-Type' => 'text/html' }, ['FIXME']]
      end
    end
  end
end
