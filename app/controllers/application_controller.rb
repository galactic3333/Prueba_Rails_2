class ApplicationController < ActionController::Base
  def show_count
    @count = params[:param]
  end

  def after_sign_in_path_for(resource)
    task_status_path(resource)
  end
end
