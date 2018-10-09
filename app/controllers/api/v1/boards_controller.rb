class Api::V1::BoardsController < ApplicationController
  def index
    # only getting all boards for a single user at this point
    @boards = Board.all
    render json: @boards
  end

  def show
    @board = Board.find(1)
    render json: @board
  end

  def create
  end

  def update
  end

  def destroy
  end
end
