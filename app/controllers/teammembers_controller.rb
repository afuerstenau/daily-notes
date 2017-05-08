class TeammembersController < ApplicationController
  before_action :set_teammember, :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teammembers
  # GET /teammembers.json
  def index
    @teammembers = Teammember.all
  end

  # GET /teammembers/1
  # GET /teammembers/1.json
  def show
  end

  # GET /teammembers/new
  def new
    @teammember = Teammember.new
    @teammember.team_id = params[:team_id]
  end

  # GET /teammembers/1/edit
  def edit
  end

  # POST /teammembers
  # POST /teammembers.json
  def create
    @teammember = Teammember.new(teammember_params)

    respond_to do |format|
      if @teammember.save
        format.html { redirect_to @teammember, notice: 'Teammember was successfully created.' }
        format.json { render :show, status: :created, location: @teammember }
      else
        format.html { render :new }
        format.json { render json: @teammember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teammembers/1
  # PATCH/PUT /teammembers/1.json
  def update
    respond_to do |format|
      if @teammember.update(teammember_params)
        # format.js
        format.html { redirect_to @teammember, notice: 'Teammember was successfully updated.' }
        format.json { render :show, status: :ok, location: @teammember }
      else
        format.html { render :edit }
        format.json { render json: @teammember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teammembers/1
  # DELETE /teammembers/1.json
  def destroy
    @teammember.destroy
    respond_to do |format|
      format.html { redirect_to teammembers_url, notice: 'Teammember was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def toggle_ooo
    @teammember = Teammember.find(params[:id])
    if @teammember.state == "In the Office"
      @teammember.state = "Out of Office"
    elsif @teammember.state == "Out of Office"
      @teammember.state = "Missing"
    elsif @teammember.state == "Missing"
       @teammember.state = "In Home Office"
     else
       @teammember.state = "In the Office"
     end
    @teammember.save
    @team = Team.find(1)
    redirect_to notes_index_url

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teammember
      @teammember = Teammember.find(params[:id])
    end

    def set_team
      @team = Team.find(1)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teammember_params
      params.require(:teammember).permit(:name, :team_id, :state)
    end
end
