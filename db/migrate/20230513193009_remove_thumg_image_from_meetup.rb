class RemoveThumgImageFromMeetup < ActiveRecord::Migration[7.0]
  def change
    remove_column :meetups, :thumg_image, :string
    add_column :meetups, :thumb_image, :string
  end
end
