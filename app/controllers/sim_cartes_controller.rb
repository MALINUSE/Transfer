class SimCartesController < ApplicationController
  before_action :set_sim_carte, only: [:show, :edit, :update, :destroy]

  # GET /sim_cartes
  # GET /sim_cartes.json
  def index
    @sim_cartes = SimCarte.all
  end

  # GET /sim_cartes/1
  # GET /sim_cartes/1.json
  def show
  end

  # GET /sim_cartes/new
  def new
    @sim_carte = SimCarte.new
  end

  # GET /sim_cartes/1/edit
  def edit
  end

  # POST /sim_cartes
  # POST /sim_cartes.json
  def create
    @sim_carte = SimCarte.new(sim_carte_params)

    respond_to do |format|
      if @sim_carte.save
        format.html { redirect_to @sim_carte, notice: 'Sim carte was successfully created.' }
        format.json { render :show, status: :created, location: @sim_carte }
      else
        format.html { render :new }
        format.json { render json: @sim_carte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sim_cartes/1
  # PATCH/PUT /sim_cartes/1.json
  def update
    respond_to do |format|
      if @sim_carte.update(sim_carte_params)
        format.html { redirect_to @sim_carte, notice: 'Sim carte was successfully updated.' }
        format.json { render :show, status: :ok, location: @sim_carte }
      else
        format.html { render :edit }
        format.json { render json: @sim_carte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sim_cartes/1
  # DELETE /sim_cartes/1.json
  def destroy
    @sim_carte.destroy
    respond_to do |format|
      format.html { redirect_to sim_cartes_url, notice: 'Sim carte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sim_carte
      @sim_carte = SimCarte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sim_carte_params
      params.require(:sim_carte).permit(:numero)
    end
end
