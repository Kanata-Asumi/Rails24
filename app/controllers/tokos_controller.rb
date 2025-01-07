class TokosController < ApplicationController
  before_action :set_toko, only: %i[ show edit update destroy ]

  # GET /tokos or /tokos.json
  def index
    @tokos = Toko.all
  end

  # GET /tokos/1 or /tokos/1.json
  def show
  end

  # GET /tokos/new
  def new
    @toko = Toko.new
  end

  # GET /tokos/1/edit
  def edit
  end

  # POST /tokos or /tokos.json
  def create
    @toko = Toko.new(toko_params)

    respond_to do |format|
      if @toko.save
        format.html { redirect_to toko_url(@toko), notice: "Toko was successfully created." }
        format.json { render :show, status: :created, location: @toko }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @toko.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tokos/1 or /tokos/1.json
  def update
    respond_to do |format|
      if @toko.update(toko_params)
        format.html { redirect_to toko_url(@toko), notice: "Toko was successfully updated." }
        format.json { render :show, status: :ok, location: @toko }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @toko.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tokos/1 or /tokos/1.json
  def destroy
    @toko.destroy!

    respond_to do |format|
      format.html { redirect_to tokos_url, notice: "Toko was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toko
      @toko = Toko.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def toko_params
      params.require(:toko).permit(:hobby, :toko)
    end
end
