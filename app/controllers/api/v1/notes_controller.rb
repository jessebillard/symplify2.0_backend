class Api::V1::NotesController < ApplicationController
  def show
    @note = Note.find(1)
    render json: @note
  end

  def create
    # needs an id of a list to belong to in order to persist new note
    # byebug
    @note = Note.new(note_params)
    @list = List.find(params["listId"])
    @note.list_id = @list.id
    if @note.save
      @list.note_order.unshift(@note.id)
      # byebug
      render json: @note
    else
      render json: error_message
    end    
  end

  def update
  end

  def destroy
  end

  private

  def note_params
    params.require(:note).permit(:title, :description)
  end

  def error_message
    {status: "error", code: 400, message: "This request cannot be completed"}
  end

end
