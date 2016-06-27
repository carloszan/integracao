class EmployeeBooksController < ApplicationController
  before_action :authenticate_employee!
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    current_employee.books.push(@book = Book.new(books_params))
    if current_employee.save
      flash[:notice] = "Horario criado com sucesso"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def books_params
    params.require(:book).permit(:hour)
  end

end
