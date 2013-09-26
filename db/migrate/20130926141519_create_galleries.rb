class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.text :description
      t.integer :image_id
      t.integer :page_id

      t.timestamps
    end
  end
end
