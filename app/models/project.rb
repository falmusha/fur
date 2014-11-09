class Project < ActiveRecord::Base

  has_many :room_layouts
  belongs_to :user

end
