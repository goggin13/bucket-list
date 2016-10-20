class ApplicationController < ActionController::Base
  http_basic_authenticate_with(
    name: ENV["BASIC_AUTH_USERNAME"] || "username",
    password: ENV["BASIC_AUTH_PASSWORD"] || "password"
  )
  protect_from_forgery with: :exception
end
