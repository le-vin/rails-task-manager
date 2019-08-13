class TasksController < ApplicationController
  def tasks
    @tasks = Task.all
  end

  def task
    @task = Task.find(params[:id])
    if @task[:completed] == true
      @checked = "checked"
      @message = "The task is completed"
    else
      @checked = ""
      @message = "The task is not completed"
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save!

    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def delete
    @task = Task.find(params[:id])
    @task.delete
    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
