class StudentBooksController < ApplicationController
  before_action :already_booked, only: [:edit, :update]
  def index
    @books = Book.not_booked
  end

  def show
    @book = Book.find_by(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.student = current_student

    if @book.update_attributes(books_params)
      flash[:notice] = "Agendado com sucesso"
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def books_params
    params.require(:book).permit(:hour)
  end
end
