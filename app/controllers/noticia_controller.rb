class NoticiaController < ApplicationController
  before_action :set_noticia, only: %i[ show edit update destroy ]

  # GET /noticia or /noticia.json
  def index
    @noticias = Noticia.all
  end

  # GET /noticia/1 or /noticia/1.json
  def show
  end

  # GET /noticia/new
  def new
    @noticias = Noticia.new
  end

  # GET /noticia/1/edit
  def edit
  end

  # POST /noticia or /noticia.json
  def create
    @noticium = Noticia.new(noticia_params)

    respond_to do |format|
      if @noticium.save
        format.html { redirect_to noticia_url(@noticia), notice: "Noticia was successfully created." }
        format.json { render :show, status: :created, location: @noticia }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @noticia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noticia/1 or /noticia/1.json
  def update
    respond_to do |format|
      if @noticia.update(noticia)
        format.html { redirect_to noticium_url(@noticia), notice: "Noticium was successfully updated." }
        format.json { render :show, status: :ok, location: @noticia }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @noticia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noticia/1 or /noticia/1.json
  def destroy
    @noticia.destroy

    respond_to do |format|
      format.html { redirect_to noticia_url, notice: "Noticia was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noticia
      @noticium = Noticia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def noticia_params
      params.require(:noticia).permit(:titulo, :contenido, :link, :tipo, :estado)
    end
end
