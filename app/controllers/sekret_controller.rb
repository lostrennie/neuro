class SekretController < ApplicationController
    before_action :ensure_user_signed_in

  private
  def ensure_user_signed_in
    unless current_user.present?
      redirect_to new_sessions_path, alert: 'Must be signed in.'
    end
  end

  def current_user
    if session.has_key? :user_id
      @current_user ||=User.find(session[:user_id])
    end
  end

end