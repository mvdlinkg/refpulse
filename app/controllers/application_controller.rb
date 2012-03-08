class ApplicationController < ActionController::Base
  protect_from_forgery
  # before_filter :authenticate_user!, :except => [:some_action_without_auth]
  before_filter :load_metadata

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end

  def load_metadata
    @title = Settings.site['name']
    @metatags = Settings.site['metatags']
    @description = Settings.site['description']
  end
end
