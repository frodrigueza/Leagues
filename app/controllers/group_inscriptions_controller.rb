class GroupInscriptionsController < ApplicationController
  before_action :set_group_inscription, only: [:show, :edit, :update, :destroy]

  # GET /group_inscriptions
  # GET /group_inscriptions.json
  def index
    @group_inscriptions = GroupInscription.all
  end

  # GET /group_inscriptions/1
  # GET /group_inscriptions/1.json
  def show
  end

  # GET /group_inscriptions/new
  def new
    @group_inscription = GroupInscription.new
  end

  # GET /group_inscriptions/1/edit
  def edit
  end

  # POST /group_inscriptions
  # POST /group_inscriptions.json
  def create
    @group_inscription = GroupInscription.new(group_inscription_params)

    respond_to do |format|
      if @group_inscription.save
        format.html { redirect_to @group_inscription, notice: 'Group inscription was successfully created.' }
        format.json { render action: 'show', status: :created, location: @group_inscription }
      else
        format.html { render action: 'new' }
        format.json { render json: @group_inscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_inscriptions/1
  # PATCH/PUT /group_inscriptions/1.json
  def update
    respond_to do |format|
      if @group_inscription.update(group_inscription_params)
        format.html { redirect_to @group_inscription, notice: 'Group inscription was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @group_inscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_inscriptions/1
  # DELETE /group_inscriptions/1.json
  def destroy
    @group_inscription.destroy
    respond_to do |format|
      format.html { redirect_to group_inscriptions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_inscription
      @group_inscription = GroupInscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_inscription_params
      params.require(:group_inscription).permit(:group_id, :inscription_id)
    end
end
