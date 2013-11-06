class ApplicationController < ActionController::Base
  before_filter :authenticate, :except => :admin
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate
    if Rails.env.production?
      redirect_to :protocol => "https://" unless (request.ssl?)
      authenticate_or_request_with_http_basic do |name,password|
        name == 'mel' && password == 'eric'
      end
    end
  end

  def admin
  end
end
