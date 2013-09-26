class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.boolean :root_page
      t.integer :page_id

      t.timestamps
    end
  end
end
