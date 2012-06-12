class WorkersController < ApplicationController
  def show
    @worker = Worker.find(params[:id])
  end
  def index
    @workers = Worker.all
  end
end
