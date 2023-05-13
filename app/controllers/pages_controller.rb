class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:user_current]
  respond_to :json

  def home
    @products = Product.all.order(created_at: :desc).limit(3)
    @meetups = Meetup.all.order(created_at: :desc).limit(3)
    @posts = Post.all.order(created_at: :desc).limit(3)

    render json: {
      products: @products,
      meetups: @meetups,
      posts: @posts,
    }, include: :user
  end

  def user_current
    render json: current_user
  end
end
