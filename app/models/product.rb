class Product < ApplicationRecord

    validates_presence_of :title, :description, :price

    mount_uploader :main_image, ProductUploader
    mount_uploader :thumb_image, ProductUploader

    belongs_to :user

    has_many :likes, dependent: :destroy
end
