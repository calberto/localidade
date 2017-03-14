class PatriasController < ApplicationController
  before_action :set_patria, only: [:show, :edit, :update, :destroy]

  # GET /patrias
  # GET /patrias.json
  def index
    @patrias = Patria.all
  end

  # GET /patrias/1
  # GET /patrias/1.json
  def show
  end

  # GET /patrias/new
  def new
    @patria = Patria.new
  end

  # GET /patrias/1/edit
  def edit
  end

  # POST /patrias
  # POST /patrias.json
  def create
    @patria = Patria.new(patria_params)

    respond_to do |format|
      if @patria.save
        format.html { redirect_to @patria, notice: 'Patria was successfully created.' }
        format.json { render :show, status: :created, location: @patria }
      else
        format.html { render :new }
        format.json { render json: @patria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patrias/1
  # PATCH/PUT /patrias/1.json
  def update
    respond_to do |format|
      if @patria.update(patria_params)
        format.html { redirect_to @patria, notice: 'Patria was successfully updated.' }
        format.json { render :show, status: :ok, location: @patria }
      else
        format.html { render :edit }
        format.json { render json: @patria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patrias/1
  # DELETE /patrias/1.json
  def destroy
    @patria.destroy
    respond_to do |format|
      format.html { redirect_to patrias_url, notice: 'Patria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  

  private

    def estadoss_por_patria
      dados = Estado.where(patria_id: params[:patria_id]).all
      render json: dados.to_json
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_patria
      @patria = Patria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patria_params
      params.require(:patria).permit(:nome, :sigla)
    end
end
