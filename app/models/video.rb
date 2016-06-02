class Video
  class << self
    def all
      [new(0), new(1)]
    end
  end

  def initialize(id)
    @id = id
  end

  def name
    "Video ##{@id}"
  end
end
