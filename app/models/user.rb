class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
    :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :posts
  has_many :meetups
  has_many :products
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post
  has_many :liked_meetups, through: :likes, source: :meetup
  has_many :liked_products, through: :likes, source: :product

  def jwt_payload
    super 
  end
end
