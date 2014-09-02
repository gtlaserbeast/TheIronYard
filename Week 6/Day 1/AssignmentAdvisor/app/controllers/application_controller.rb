class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
  before_action :authenticate_user!
=======
>>>>>>> e504574063bc8cc2cafecde85eb0a7fb40888492
end
