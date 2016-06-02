class VideosController < TinyRails::Controller
  def index
    @videos = Video.all
    render 'videos/index', status: 200
  end
end
