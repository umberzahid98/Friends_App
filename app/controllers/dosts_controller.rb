class DostsController < ApplicationController
  before_action :set_dost, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action:correct_user, only: [:edit, :update, :destroy ]
  # GET /dosts or /dosts.json
  def index
    @dosts = Dost.all
  end

  # GET /dosts/1 or /dosts/1.json
  def show
  end

  # GET /dosts/new
  def new
    # for assiciation
    @dost=current_user.dosts.build
    # @dost = Dost.new
  end

  # GET /dosts/1/edit
  def edit
  end

  # POST /dosts or /dosts.json
  def create
    # @dost = Dost.new(dost_params)
    # for association
    @dost=current_user.dosts.build(dost_params)

    respond_to do |format|
      if @dost.save
        format.html { redirect_to dost_url(@dost), notice: "Dost was successfully created." }
        format.json { render :show, status: :created, location: @dost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dosts/1 or /dosts/1.json
  def update
    respond_to do |format|
      if @dost.update(dost_params)
        format.html { redirect_to dost_url(@dost), notice: "Dost was successfully updated." }
        format.json { render :show, status: :ok, location: @dost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dosts/1 or /dosts/1.json
  def destroy
    @dost.destroy

    respond_to do |format|
      format.html { redirect_to dosts_url, notice: "Dost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

def correct_user
  @dost=current_user.dosts.find_by(id: params[:id] )
  redirect_to dosts_path, notice: "not authorize to edit this friend " if @dost.nil?
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dost

      @dost = Dost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dost_params

      params.require(:dost).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end
