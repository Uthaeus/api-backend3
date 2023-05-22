class Like < ApplicationRecord
  belongs_to :user 
  belongs_to :meetup, optional: true
  belongs_to :product, optional: true
  belongs_to :post, optional: true

  # validates_uniqueness_of :user, scope: :meetup
  # validates_uniqueness_of :user, scope: :product
  # validates_uniqueness_of :user, scope: :post

  # def self.liked(user, meetup)
  #   Like.where(user_id: user.id, meetup_id: meetup.id).first
  # end

  # def self.liked(user, product)
  #   Like.where(user_id: user.id, product_id: product.id).first
  # end

  # def self.liked(user, post)
  #   Like.where(user_id: user.id, post_id: post.id).first
  # end

end
