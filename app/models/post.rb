class Post < ApplicationRecord

    validates_presence_of :title, :body

    mount_uploader :image, PostUploader

    belongs_to :user

    has_many :likes, dependent: :destroy
end
