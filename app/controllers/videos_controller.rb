class VideosController < ApplicationController

	before_action :set_video, only: [:show, :edit, :update, :destroy]

  def index
  	@videos = Video.all.order(created_at: :desc)
  end

  def new
  	@video = Video.new
  end

  def create
  	@video = Video.new(video_params)
  	@video.user_id = current_user.id
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

  def Search
    @videos = Video.where('title like ?', '%' + params[:search_title] + '%').order(created_at: :desc)
    render 'index'
  end

  private
  	def video_params
  		params.require(:video).permit(:title, :videourl, :text, :username)
  	end

  	def set_video
  		@video = Video.find params[:id]
  	end
end
