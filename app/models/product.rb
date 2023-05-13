class Product < ApplicationRecord

    validates_presence_of :title, :description, :price

    mount_uploader :main_image, ProductUploader
    mount_uploader :thumb_image, ProductUploader
end
