class Api::V1::ListsController < ApplicationController
  def index
  end

  def show
    # use params from request down the line
    @list = List.find(1)
    render json: @list
  end

  def create
  end

  def update
  end

  def destroy
  end
end
