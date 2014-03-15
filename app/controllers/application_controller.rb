class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 def create
    @post = current_user.posts.build(params.require(:post).permit(:title, :body))
  
end
