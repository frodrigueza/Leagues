class LeagueUsersController < ApplicationController
  before_action :set_league_user, only: [:show, :edit, :update, :destroy]

  # GET /league_users
  # GET /league_users.json
  def index
    @league_users = LeagueUser.all
  end

  # GET /league_users/1
  # GET /league_users/1.json
  def show
  end

  # GET /league_users/new
  def new
    @league_user = LeagueUser.new
  end

  # GET /league_users/1/edit
  def edit
  end

  # POST /league_users
  # POST /league_users.json
  def create
    @league_user = LeagueUser.new(league_user_params)

    respond_to do |format|
      if @league_user.save
        format.html { redirect_to @league_user, notice: 'League user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @league_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @league_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /league_users/1
  # PATCH/PUT /league_users/1.json
  def update
    respond_to do |format|
      if @league_user.update(league_user_params)
        format.html { redirect_to @league_user, notice: 'League user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @league_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /league_users/1
  # DELETE /league_users/1.json
  def destroy
    @league_user.destroy
    respond_to do |format|
      format.html { redirect_to league_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league_user
      @league_user = LeagueUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def league_user_params
      params.require(:league_user).permit(:user_id, :league_id, :role)
    end
end
