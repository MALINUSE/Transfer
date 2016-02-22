class PeopleSimsController < ApplicationController
  before_action :set_people_sim, only: [:show, :edit, :update, :destroy]

  # GET /people_sims
  # GET /people_sims.json
  def index
    @people_sims = PeopleSim.all
  end

  # GET /people_sims/1
  # GET /people_sims/1.json
  def show
  end

  # GET /people_sims/new
  def new
    @people_sim = PeopleSim.new
  end

  # GET /people_sims/1/edit
  def edit
  end

  # POST /people_sims
  # POST /people_sims.json
  def create
    @people_sim = PeopleSim.new(people_sim_params)

    respond_to do |format|
      if @people_sim.save
        format.html { redirect_to @people_sim, notice: 'People sim was successfully created.' }
        format.json { render :show, status: :created, location: @people_sim }
      else
        format.html { render :new }
        format.json { render json: @people_sim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people_sims/1
  # PATCH/PUT /people_sims/1.json
  def update
    respond_to do |format|
      if @people_sim.update(people_sim_params)
        format.html { redirect_to @people_sim, notice: 'People sim was successfully updated.' }
        format.json { render :show, status: :ok, location: @people_sim }
      else
        format.html { render :edit }
        format.json { render json: @people_sim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people_sims/1
  # DELETE /people_sims/1.json
  def destroy
    @people_sim.destroy
    respond_to do |format|
      format.html { redirect_to people_sims_url, notice: 'People sim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_people_sim
      @people_sim = PeopleSim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def people_sim_params
      params.require(:people_sim).permit(:people_id, :sim_carte_id)
    end
end
