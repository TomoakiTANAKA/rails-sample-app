class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    text = 'Hello World'
    render plain: text
  end
end
