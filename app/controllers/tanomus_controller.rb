class TanomusController < ApplicationController
  before_action :set_tanomu, only: %i[ show edit update destroy ]

  # GET /tanomus or /tanomus.json
  def index
    @tanomus = Tanomu.all
  end

  # GET /tanomus/1 or /tanomus/1.json
  def show
  end

  # GET /tanomus/new
  def new
    @tanomu = Tanomu.new
  end

  # GET /tanomus/1/edit
  def edit
  end

  # POST /tanomus or /tanomus.json
  def create
    @tanomu = Tanomu.new(tanomu_params)

    respond_to do |format|
      if @tanomu.save
        format.html { redirect_to tanomu_url(@tanomu), notice: "Tanomu was successfully created." }
        format.json { render :show, status: :created, location: @tanomu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tanomu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tanomus/1 or /tanomus/1.json
  def update
    respond_to do |format|
      if @tanomu.update(tanomu_params)
        format.html { redirect_to tanomu_url(@tanomu), notice: "Tanomu was successfully updated." }
        format.json { render :show, status: :ok, location: @tanomu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tanomu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tanomus/1 or /tanomus/1.json
  def destroy
    @tanomu.destroy!

    respond_to do |format|
      format.html { redirect_to tanomus_url, notice: "Tanomu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tanomu
      @tanomu = Tanomu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tanomu_params
      params.require(:tanomu).permit(:username, :userid, :time, :photo, :content, :category)
    end
end
