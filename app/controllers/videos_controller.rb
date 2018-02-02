class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def new
  end

  def create
    @video = Video.new(video_params)
    if @video.valid?
      @video.save!
      redirect_to videos_url
    else
      render :new
    end
  end

  private

  def video_params
    params.require(:video).permit(:title, :duration)
  end
end
