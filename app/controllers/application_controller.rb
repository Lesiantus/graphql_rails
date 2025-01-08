class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  before_action :require_login, except: [:new, :create]

  private

  def not_authenticated
    flash[:alert] = "You need to log in to access this page."
    redirect_to login_path
  end
end
