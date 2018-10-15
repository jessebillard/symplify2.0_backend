class Api::V1::NotesController < ApplicationController
  def show
    @note = Note.find(1)
    render json: @note
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      render json: @note
    else
      render json: error_message
    end
    byebug
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
