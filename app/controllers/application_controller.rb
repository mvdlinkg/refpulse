class ApplicationController < ActionController::Base
  protect_from_forgery
  # before_filter :authenticate_user!, :except => [:some_action_without_auth]
  before_filter :load_metadata

  if Rails.env.production?
    rescue_from Exception do |e|
      render 'errors/exception', :status => 500
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end

  private

  def store_referer
    session[:return_to] = request.referer
  end

  def store_return_to(path)
    session[:return_to] = path
  end

  def redirect_back_or_to(default_url)
    redirect_to session.delete(:return_to) || default_url
  end

  def load_metadata
    @title = Settings.site['name']
    @metatags = Settings.site['metatags']
    @description = Settings.site['description']
  end
end
