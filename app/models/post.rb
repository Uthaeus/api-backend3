class Post < ApplicationRecord

    validates_presence_of :title, :body

    mount_uploader :image, PostUploader

    belongs_to :user

    has_many :likes, include: :user
    has_many :users, through: :likes
    has_many :liked_by, through: :likes, source: :user
end
