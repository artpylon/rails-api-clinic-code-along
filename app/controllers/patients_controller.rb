class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :destroy, :update]

  def index
    @patients = Patient.all

    render json: @patients
  end

  def show
    render json: @patient
  end

  def destroy
    @patient.destroy

    head :no_content
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
  private :set_patient

  def update
    if @patient.update (patient_params)
      head :no_content
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def patient_params
    params.require(:patient).permit(:name, :born_on, :diagnosis)
  end
  private :patient_params
end
