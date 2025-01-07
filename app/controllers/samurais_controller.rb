class SamuraisController < ApplicationController
  before_action :set_samurai, only: %i[ show edit update destroy ]

  # GET /samurais or /samurais.json
  def index
    @samurais = Samurai.all
  end

  # GET /samurais/1 or /samurais/1.json
  def show
  end

  # GET /samurais/new
  def new
    @samurai = Samurai.new
  end

  # GET /samurais/1/edit
  def edit
  end

  # POST /samurais or /samurais.json
  def create
    @samurai = Samurai.new(samurai_params)

    respond_to do |format|
      if @samurai.save
        format.html { redirect_to samurai_url(@samurai), notice: "Samurai was successfully created." }
        format.json { render :show, status: :created, location: @samurai }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @samurai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samurais/1 or /samurais/1.json
  def update
    respond_to do |format|
      if @samurai.update(samurai_params)
        format.html { redirect_to samurai_url(@samurai), notice: "Samurai was successfully updated." }
        format.json { render :show, status: :ok, location: @samurai }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @samurai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samurais/1 or /samurais/1.json
  def destroy
    @samurai.destroy!

    respond_to do |format|
      format.html { redirect_to samurais_url, notice: "Samurai was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_samurai
      @samurai = Samurai.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def samurai_params
      params.require(:samurai).permit(:name, :checkbox, :ingredients)
    end
end
