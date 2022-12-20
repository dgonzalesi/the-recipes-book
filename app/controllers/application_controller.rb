class ApplicationController < ActionController::Base
  @current_user = User.first
end
