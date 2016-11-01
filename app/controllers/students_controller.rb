class StudentsController < ApplicationController
  before_action :authenticate_admin!, except: [:new]
  def index
    @students = Student.order(:name)
  end

  def new
    @student = Student.new
    @student.build_address
    @student.phones.build
    @student.build_availability
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = t('.success')
      redirect_to students_path
    else
      flash[:error] = t('.error')
      render :new
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      flash[:success] = t('.success')
      redirect_to students_path
    else
      flash[:error] = t('.error')
      render :edit
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:success] = t('.success')
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student)
          .permit(:name, :date_birth, :rg, :cpf,
                  :date_emission, :organ_emitter, :nationality, :civil_status,
                  :father_name, :mother_name, :email, :profession, :scholarity,
                  :vessel, :proof_of_address, :document_photo, :city, :cnh,
                  :vessel_experience, :payment_type, :course, :referrer,
                  address_attributes: [:street, :district, :city, :cep],
                  availability_attributes: [:date1, :date2, :date3, :date4],
                  phones_attributes: [:id, :number, :phone_type, :_destroy])
  end
end
