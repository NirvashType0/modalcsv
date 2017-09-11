class InvmtolineasController < ApplicationController
  before_action :set_invmtolinea, only: [:show, :edit, :update, :destroy]

  # GET /invmtolineas
  # GET /invmtolineas.json
  def index
    @invmtolineas = Invmtolinea.all
  end

  # GET /invmtolineas/1
  # GET /invmtolineas/1.json
  def show
  end

  # GET /invmtolineas/new
  def new
    @invmtolinea = Invmtolinea.new
  end

  # GET /invmtolineas/1/edit
  def edit
  end

  # POST /invmtolineas
  # POST /invmtolineas.json
  def create
    @invmtolinea = Invmtolinea.new(invmtolinea_params)

    respond_to do |format|
      if @invmtolinea.save
        format.html { redirect_to @invmtolinea, notice: 'Invmtolinea was successfully created.' }
        format.json { render :show, status: :created, location: @invmtolinea }
      else
        format.html { render :new }
        format.json { render json: @invmtolinea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invmtolineas/1
  # PATCH/PUT /invmtolineas/1.json
  def update
    respond_to do |format|
      if @invmtolinea.update(invmtolinea_params)
        format.html { redirect_to @invmtolinea, notice: 'Invmtolinea was successfully updated.' }
        format.json { render :show, status: :ok, location: @invmtolinea }
      else
        format.html { render :edit }
        format.json { render json: @invmtolinea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invmtolineas/1
  # DELETE /invmtolineas/1.json
  def destroy
    @invmtolinea.destroy
    respond_to do |format|
      format.html { redirect_to invmtolineas_url, notice: 'Invmtolinea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invmtolinea
      @invmtolinea = Invmtolinea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invmtolinea_params
      params.require(:invmtolinea).permit(:codlinea, :nombre, :nis, :feacceso)
    end
end
