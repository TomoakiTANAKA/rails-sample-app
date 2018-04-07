class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from ActionController::RoutingError, with: :not_found

  def hello
    text = 'Hello World'
    render plain: text
  end

  def not_found
    render 'errors/404', status: 404
  end
end
