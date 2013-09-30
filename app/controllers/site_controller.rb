class SiteController < ApplicationController
  def home
    @home_page  = Page.where(home_page: true)
    @root_pages = Page.where(root_page: true)
  end
end
