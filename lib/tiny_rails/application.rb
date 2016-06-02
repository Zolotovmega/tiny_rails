module TinyRails
  class Application
    def call(env)
      [200, { 'Content-Type' => 'text/html' }, ['FIXME']]
    end
  end
end
