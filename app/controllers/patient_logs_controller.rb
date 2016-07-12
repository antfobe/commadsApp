class PatientLogsController < ApplicationController
  before_action :set_patient_log, only: [:show, :edit, :update, :destroy]

  # GET /patient_logs
  # GET /patient_logs.json
  def index
    @patient_logs = PatientLog.all
  end

  # GET /patient_logs/1
  # GET /patient_logs/1.json
  def show
  end

  # GET /patient_logs/new
  def new
    @patient_log = PatientLog.new
  end

  # GET /patient_logs/1/edit
  def edit
  end

  # POST /patient_logs
  # POST /patient_logs.json
  def create
    @patient_log = PatientLog.new(patient_log_params)

    respond_to do |format|
      if @patient_log.save
        format.html { redirect_to @patient_log, notice: 'Patient log was successfully created.' }
        format.json { render :show, status: :created, location: @patient_log }
      else
        format.html { render :new }
        format.json { render json: @patient_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_logs/1
  # PATCH/PUT /patient_logs/1.json
  def update
    respond_to do |format|
      if @patient_log.update(patient_log_params)
        format.html { redirect_to @patient_log, notice: 'Patient log was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_log }
      else
        format.html { render :edit }
        format.json { render json: @patient_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_logs/1
  # DELETE /patient_logs/1.json
  def destroy
    @patient_log.destroy
    respond_to do |format|
      format.html { redirect_to patient_logs_url, notice: 'Patient log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_log
      @patient_log = PatientLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_log_params
      params.require(:patient_log).permit(:namePatient, :dateAppointment, :nameMedic, :status, :info)
    end
end
