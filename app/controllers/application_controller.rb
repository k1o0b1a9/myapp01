class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_account

  def set_current_account
    if session[:account_id]
    @current_account ||= Account.find_by(id: session[:account_id])
    end
  end
end
