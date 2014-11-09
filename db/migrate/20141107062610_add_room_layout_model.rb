class AddRoomLayoutModel < ActiveRecord::Migration
  def change
    create_table :room_layouts do |t|
      t.integer :project_id
      t.string :name
      t.text :description
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
