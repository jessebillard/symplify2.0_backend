class Api::V1::NotesController < ApplicationController
  def show
    @note = Note.find(1)
    render json: @note
  end

  def create
  end

  def update
  end

  def destroy
  end
end
