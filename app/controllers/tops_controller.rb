class TopsController < ApplicationController
  before_action :redirect_if_authenticated, only: [:index]

  def index
  end

  private

  def redirect_if_authenticated
    if user_signed_in?
      redirect_to rooms_path
    end
  end
end
