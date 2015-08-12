class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # mms: expected to see authentication occur here, to lock down all actions unless logged in.
  # mms:   You are using `current_user` throughout your other controllers, you only have a `current_user` if you are logged in, you need some code to require you to log in.
end
