class ArtesanosController < ApplicationController
  before_action :set_artesano, only: [:show, :edit, :update, :destroy]

  # GET /artesanos
  # GET /artesanos.json
  def index
    @artesanos = Artesano.all
  end

  # GET /artesanos/1
  # GET /artesanos/1.json
  def show
  end

  # GET /artesanos/new
  def new
    @artesano = Artesano.new
  end

  # GET /artesanos/1/edit
  def edit
  end

  # POST /artesanos
  # POST /artesanos.json
  def create
    @artesano = Artesano.new(artesano_params)

    respond_to do |format|
      if @artesano.save
        format.html { redirect_to @artesano, notice: 'Artesano was successfully created.' }
        format.json { render :show, status: :created, location: @artesano }
      else
        format.html { render :new }
        format.json { render json: @artesano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artesanos/1
  # PATCH/PUT /artesanos/1.json
  def update
    respond_to do |format|
      if @artesano.update(artesano_params)
        format.html { redirect_to @artesano, notice: 'Artesano was successfully updated.' }
        format.json { render :show, status: :ok, location: @artesano }
      else
        format.html { render :edit }
        format.json { render json: @artesano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artesanos/1
  # DELETE /artesanos/1.json
  def destroy
    @artesano.destroy
    respond_to do |format|
      format.html { redirect_to artesanos_url, notice: 'Artesano was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artesano
      @artesano = Artesano.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artesano_params
      params.require(:artesano).permit(:tipo, :nombre, :exp, :region, :t_taller, :t_artesania, :desc, :logo, :foto, :banner1, :banner2, :banner3, :banner4)
    end
end
