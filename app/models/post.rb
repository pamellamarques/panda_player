class Post < ApplicationRecord
has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  has_attached_file :audio 
  validates_attachment_content_type :audio, content_type: ['audio/mp3','audio/mpeg']
end
