class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!	#deviseの認証
end
