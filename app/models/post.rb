class Post < ApplicationRecord

    validates_presence_of :title, :body

    mount_uploader :image, PostUploader
end
