class StudentsController < ApplicationController
  def index
    @students = Student.order(:name)
  end

  def new
    @student = Student.new
    @student.build_address
    @student.phones.build
    @student.build_availability
    @student.courses.build
    @student.build_referrer
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      #  flash[:success] = "Cadastro criado com sucesso !"
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
    params.require(:student).permit(:name, :date_birth, :rg, :cpf,
                                    :date_emission, :organ_emitter, :nationality, :civil_status, :father_name,
                                    :mother_name, :email, :profession, :scholarity, :vessel, :proof_of_address,
                                    :document_photo, :city, :vessel_experience, :payment_type, :cnh,
                                    address_attributes: [:street, :district, :city, :cep],
                                    availability_attributes: [:date1, :date2, :date3, :date4],
                                    courses_attributes: [:name, :price], phones_attributes: [:id, :number,
                                                                                             :type, :_destroy],
                                    referrer_attributes: [:type, :name])
  end
end
