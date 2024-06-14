class HomeController < ApplicationController
  def index
     @latest_posts = Post.includes(:user, :category).order(created_at: :desc).limit(3)
  end
end
