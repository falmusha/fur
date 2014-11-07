class AddRoomLayoutModel < ActiveRecord::Migration
  def change
    create_table :room_layouts do |t|
      t.string :name
      t.text :description
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
