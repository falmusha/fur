class RoomLayout < ActiveRecord::Base

  belongs_to :project
    
  has_attached_file :blueprint,
    styles: { 
      medium: "300x300>", 
      thumb: "100x100>" 
    },
    default_url: "/assets/cat.jpg"
  validates_attachment_content_type :blueprint, :content_type => /\Aimage\/.*\Z/

end
