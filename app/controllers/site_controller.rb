class SiteController < ApplicationController
  def home
    @home_page  = Page.where(title: params[:title] || 'Home')
    @root_pages = Page.where(root_page: true)
  end
end
