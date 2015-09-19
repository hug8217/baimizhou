class JianbasController < ApplicationController
  before_action :set_jianba, only: [:show, :edit, :update, :destroy]

  # GET /jianbas
  # GET /jianbas.json
  def index
    @jianbas = Jianba.all
  end

  # GET /jianbas/1
  # GET /jianbas/1.json
  def show
  end

  # GET /jianbas/new
  def new
    @jianba = Jianba.new
  end

  # GET /jianbas/1/edit
  def edit
  end

  # POST /jianbas
  # POST /jianbas.json
  def create
    @jianba = Jianba.new(jianba_params)

    respond_to do |format|
      if @jianba.save
        format.html { redirect_to @jianba, notice: 'Jianba was successfully created.' }
        format.json { render :show, status: :created, location: @jianba }
      else
        format.html { render :new }
        format.json { render json: @jianba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jianbas/1
  # PATCH/PUT /jianbas/1.json
  def update
    respond_to do |format|
      if @jianba.update(jianba_params)
        format.html { redirect_to @jianba, notice: 'Jianba was successfully updated.' }
        format.json { render :show, status: :ok, location: @jianba }
      else
        format.html { render :edit }
        format.json { render json: @jianba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jianbas/1
  # DELETE /jianbas/1.json
  def destroy
    @jianba.destroy
    respond_to do |format|
      format.html { redirect_to jianbas_url, notice: 'Jianba was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jianba
      @jianba = Jianba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jianba_params
      params.require(:jianba).permit(:title, :author, :date, :link)
    end
end
