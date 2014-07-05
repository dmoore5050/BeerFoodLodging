class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :configure_permitted_parameters, if: :devise_controller?
  after_filter :flash_to_headers

  def flash_to_headers
    return unless request.xhr?
    response.headers['flash-type'] = flash.keys.first.to_s
    response.headers['flash-msg']  = flash[:alert]   unless flash[:alert].blank?
    response.headers['flash-msg']  = flash[:notice]  unless flash[:notice].blank?


    flash.discard
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end

  private

  def cities
    City.all
  end
  helper_method :cities

  def message_notification
    messages = Message.where(read: false).to_a
    count    = messages.present? ? "#{messages.count}" : "No"

    "#{count} unread messages"
  end
  helper_method :message_notification
end
