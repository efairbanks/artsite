class AddHomePageToPage < ActiveRecord::Migration
  def change
    add_column :pages, :home_page, :boolean
  end
end
