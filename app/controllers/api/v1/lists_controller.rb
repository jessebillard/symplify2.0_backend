class Api::V1::ListsController < ApplicationController
  def index
    # get all lists for a given board    
    @lists = List.all
    render json: @lists
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

  private



end
