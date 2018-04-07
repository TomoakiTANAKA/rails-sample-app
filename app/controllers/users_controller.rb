class UsersController < ApplicationController
  before_action :require_login, only: [:index]
  def index
  end

  def show
  end

  private

  def require_login
    # nothing
  end
end
