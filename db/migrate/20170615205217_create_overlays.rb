class CreateOverlays < ActiveRecord::Migration[5.1]
  def change
    create_table :overlays do |t|
      t.string :title
      t.string :overlay_type
      t.text :data

      t.timestamps
    end
  end
end
