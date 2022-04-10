class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @destination = Destination.find(params[:destination_id])
    @task = Task.new # needed to instantiate the form
  end

  def create
    @task = Task.new(task_params)
    @destination = Destination.find(params[:destination_id])
    @task.destination = @destination
    @task.save
    redirect_to destination_path(@destination)
  end

  def edit
    @destination = Destination.find(params[:destination_id])
    @task = Task.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:destination_id])
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to destination_path(@destination)
  end

  def destroy
    @destination = Destination.find(params[:destination_id])
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to destination_path(@destination)
  end

  private

  def task_params
    params.require(:task).permit(:title, :notes)
  end
end
