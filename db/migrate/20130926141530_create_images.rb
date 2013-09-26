class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :page_id
      t.integer :gallery_id
      t.integer :post_id

      t.timestamps
    end
  end
end
