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
      flash[:notice] = "Video successfully created"
      redirect_to videos_url
    else
      flash[:allert] = "Error"
      render :new
    end
  end

  def destroy
    video = Video.find(params[:id])
    video.destroy!
    flash[:notice] = "Video successfully deleted"
    redirect_to videos_url
  end

  private

  def video_params
    params.require(:video).permit(:title, :duration)
  end
end
