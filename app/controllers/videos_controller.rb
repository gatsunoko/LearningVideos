class VideosController < ApplicationController

	before_action :set_video, only: [:show, :edit, :update, :destroy]

  def index
  	@videos = Video.all
  end

  def new
  	@video = Video.new
  end

  def create
  	@video = Video.new(video_params)

  	if @video.save
  		redirect_to @video
  	else
  		render 'new'
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @video.update(video_params)
  		redirect_to @video
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@video.destroy
  	redirect_to videos_path
  end

  private
  	def video_params
  		params.require(:video).permit(:title, :videourl, :text)
  	end

  	def set_video
  		@video = Video.find params[:id]
  	end
end
