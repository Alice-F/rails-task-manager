class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(title: params[:task][:title], details: params[:task][:details])
    @task.save
    redirect_to tasks_path

    # @task = Task.new(task[title])
    # @task.save
    # redirect_to tasks_path
  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  # def task_params
  #   params.require(:task).permit(:title, :details)
  # end

end
