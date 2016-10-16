class ApplicationController < ActionController::Base
  http_basic_authenticate_with(
    name: ENV["BASIC_AUTH_USERNAME"],
    password: ENV["BASIC_AUTH_PASSWORD"]
  )
  protect_from_forgery with: :exception
end
