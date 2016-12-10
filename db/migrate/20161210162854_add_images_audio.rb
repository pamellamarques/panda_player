class AddImagesAudio < ActiveRecord::Migration[5.0]
  def up
    add_attachment :posts, :image
    add_attachment :posts, :audio
  end

  def down
    remove_attachment :posts, :image
    remove_attachment :posts, :audio
  end
end
