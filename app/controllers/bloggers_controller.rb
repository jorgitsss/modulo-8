class BloggersController < ApplicationController
  before_action :set_blogger, only: %i[ show edit update destroy ]

  # GET /bloggers or /bloggers.json
  def index
    @bloggers = Blogger.all
  end

  # GET /bloggers/1 or /bloggers/1.json
  def show
  end

  # GET /bloggers/new
  def new
    @blogger = Blogger.new
  end

  # GET /bloggers/1/edit
  def edit
  end

  # POST /bloggers or /bloggers.json
  def create
    @blogger = Blogger.new(blogger_params)

    respond_to do |format|
      if @blogger.save
        format.html { redirect_to blogger_url(@blogger), notice: "Blogger was successfully created." }
        format.json { render :show, status: :created, location: @blogger }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blogger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloggers/1 or /bloggers/1.json
  def update
    respond_to do |format|
      if @blogger.update(blogger_params)
        format.html { redirect_to blogger_url(@blogger), notice: "Blogger was successfully updated." }
        format.json { render :show, status: :ok, location: @blogger }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blogger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloggers/1 or /bloggers/1.json
  def destroy
    @blogger.destroy

    respond_to do |format|
      format.html { redirect_to bloggers_url, notice: "Blogger was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogger
      @blogger = Blogger.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blogger_params
      params.require(:blogger).permit(:titulo, :contenido, :link, :tipo, :estado)
    end
end
