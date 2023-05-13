class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:user_current]

  def home
    @products = Product.all
    @meetups = Meetup.all
    @posts = Post.all

    render json: {
      products: @products,
      meetups: @meetups,
      posts: @posts,
      include: [:user]
    }
  end

  def user_current
    render json: current_user
  end
end
