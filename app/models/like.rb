class Like < ApplicationRecord
  belongs_to :user
  belongs_to :meetups
  belongs_to :posts
  belongs_to :products
end
