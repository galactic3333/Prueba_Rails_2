class ApplicationController < ActionController::Base
  def show_count
    @count = params[:param]
  end
end
