class CreateStudentsController < ApplicationController
  before_action :authenticate_employee!
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(students_params)
    @student.gym = current_employee.gym

    if @student.save
      flash[:notice] = 'Usuario cadastrado com sucesso'
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end

  def delete
  end

  private

  def students_params
    params.require(:student).permit(:name, :email, :password,
                   :password_confirmation, :tel, :age)
  end
end
