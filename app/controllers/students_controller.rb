class StudentsController < ApplicationController
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
      flash[:success] = 'Cadastro criado com sucesso !'
      redirect_to '/students'
    else
      render 'new'
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      flash[:sucess] = 'Cadastro atualizado com sucesso !'
      redirect_to '/students'
    else
      render 'edit'
    end
  end

  def edit
    @student = Student.find(params[:id])
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
