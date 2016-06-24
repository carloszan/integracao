class StudentBooksController < ApplicationController
  def index
    @books = Book.all
  end
end
