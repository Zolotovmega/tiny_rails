module TinyRails
  class Controller
    DEFAULT_STATUS = 200
    VIEW_PATH = 'app/views'.freeze

    def render(view_path, options = {})
      view_path = Pathname.new(view_path)
      view_path = if view_path.relative?
                    File.join(TinyRails.root, VIEW_PATH, view_path.to_s)
                  else
                    view_path.to_s
                  end

      data = Render.call(view_path + ".erb", binding)

      [options.fetch(:status, DEFAULT_STATUS), {}, [data]]
    end
  end
end
