class AddBlueprintToRoomLayout < ActiveRecord::Migration
  def self.up
    add_attachment :room_layouts, :blueprint
  end

  def self.down
    remove_attachment :room_layouts, :blueprint
  end
end

