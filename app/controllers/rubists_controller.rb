class RubistsController < ApplicationController
  before_action :set_rubist, only: [:show, :edit, :update, :destroy]

  # GET /rubists
  # GET /rubists.json
  def index
    @rubists = Rubist.all
  end

  # GET /rubists/1
  # GET /rubists/1.json
  def show
  end

  # GET /rubists/new
  def new
    @rubist = Rubist.new
  end

  # GET /rubists/1/edit
  def edit
  end

  # POST /rubists
  # POST /rubists.json
  def create
    @rubist = Rubist.new(rubist_params)

    respond_to do |format|
      if @rubist.save
        format.html { redirect_to @rubist, notice: 'Rubist was successfully created.' }
        format.json { render :show, status: :created, location: @rubist }
      else
        format.html { render :new }
        format.json { render json: @rubist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubists/1
  # PATCH/PUT /rubists/1.json
  def update
    respond_to do |format|
      if @rubist.update(rubist_params)
        format.html { redirect_to @rubist, notice: 'Rubist was successfully updated.' }
        format.json { render :show, status: :ok, location: @rubist }
      else
        format.html { render :edit }
        format.json { render json: @rubist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubists/1
  # DELETE /rubists/1.json
  def destroy
    @rubist.destroy
    respond_to do |format|
      format.html { redirect_to rubists_url, notice: 'Rubist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubist
      @rubist = Rubist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rubist_params
      params.require(:rubist).permit(:name, :dob, :age, :email, :experience)
    end
end
