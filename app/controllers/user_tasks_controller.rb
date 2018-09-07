class UserTasksController < ApplicationController
  def task_status
    @user = User.find(params[:id])
    @tasks = Task.all - @user.tasks
    @user_tasks = @user.tasks
  end

  def complete_task
    @user = User.find(params[:id])
    @task = Task.find(params[:task_id])
    @user.tasks << @task
    redirect_to task_status_path(@user)
  end

  def remove_task
    @user = User.find(params[:id])
    @task = Task.find(params[:task_id])
    @user.tasks.delete(@task)
    redirect_to task_status_path(@user)
  end

end
