class StudentsController < ApplicationController
  def index
    @students = Student.order(:name)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(user_params)
    if @student.save
    #  flash[:success] = "Cadastro criado com sucesso !"
      redirect_to '/students'
    else
      render 'new'
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(user_params)
      flash[:sucess] = "Cadastro atualizado com sucesso !"
      redirect_to '/students'
    else
      render 'edit'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end


  private

  def user_params
    params.require(:student).permit(:name, :date_birth, :rg, :cpf,
     :date_emission, :organ_emitter, :nationality, :civil_status, :father_name,
     :mother_name, :email, :profession, :scholarity, :vessel, :proof_of_address,
     :document_photo, :city, :vessel_experience, :payment_type, :cnh)
  end

end
