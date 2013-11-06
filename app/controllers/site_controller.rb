class SiteController < ApplicationController
  
  skip_before_filter :authenticate

  layout 'site.html.erb'

  def home
    @home_page  = Page.where(title: params[:title] || 'Home')
    @root_pages = Page.where(root_page: true)
    @child_pages = @home_page.first.pages.all
  end
end
