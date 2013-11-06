class SiteController < ApplicationController
  def home
    @home_page  = Page.where(title: params[:title] || 'Home')
    @root_pages = Page.where(root_page: true)
    @child_pages = @home_page.first.pages.all
    if @child_pages.empty? and not @home_page.first.page_id.nil? and not @home_page.first.root_page
      @child_pages = Page.where(id: @home_page.first.page_id).first.pages.all
    end
  end
end
