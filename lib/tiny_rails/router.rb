module TinyRails
  class Router
    attr_reader :routes

    def initialize
      @routes = []
    end

    def draw(&block)
      instance_eval(&block)
    end

    def match(path)
      route = routes.find { |route| route.match?(path) }
      route.app
    end

    def map(path, options)
      app = controller_action(options[:to])
      @routes << Route.new(path, app)
    end

    private

      def controller_action(to)
        return to unless to.is_a?(String)
        controller_klass_name, action = to.split('#')
        controller_klass_name = controller_klass_name.split('_').map(&:capitalize).join
        controller_klass = Kernel.const_get("#{controller_klass_name}Controller")
        controller_klass.new.method(action)
      end

  end
end
