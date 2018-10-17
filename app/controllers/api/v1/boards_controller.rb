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
    @board = Board.new(board_params)
    @board.list_order = []
    @board.user_id = 1
    if @board.save
      render json: @board
    else
      render json: error_message
    end        
  end

  def update
  end

  def destroy
  end

  private

  def board_params
    params.require(:board).permit(:title)
  end

  def error_message
    {status: "error", code: 400, message: "This request cannot be completed"}
  end

end
