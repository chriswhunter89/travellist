class MemoriesController < ApplicationController
  def index
    @memories = Memory.all
  end

  def show
    @memory = Memory.find(params[:id])
  end

  def new
    @memory = Memory.new # needed to instantiate the form
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.save
    redirect_to memory_path(@memory)
  end

  def edit
    @memory = Memory.find(params[:id])
  end

  def update
    @memory = Memory.find(params[:id])
    @memory.update(memory_params)
    redirect_to memory_path(@memory)
  end

  def destroy
    @memory = Memory.find(params[:id])
    @memory.destroy
    redirect_to memory_path
  end

  private

  def memory_params
    params.require(:memory).permit(:blog, :review)
  end
end
