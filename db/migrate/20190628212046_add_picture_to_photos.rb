class AddPictureToPhotos < ActiveRecord::Migration[5.2]
  mount_uploder :picture, PictureUploader
  def change
    add_column :photos, :picture, :string
  end
end
