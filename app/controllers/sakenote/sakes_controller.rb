class Sakenote::SakesController < ApplicationController
  before_action :set_sakenote_sake, only: [:show, :edit, :update, :destroy]

  # GET /sakenote/sakes
  # GET /sakenote/sakes.json
  def index
    @q = Sakenote::Sake.ransack(params[:q])
    @q.sorts = ['sake_identify_code asc']
    @sakenote_sakes = @q.result
                    .includes(:maker)
                    .order(:sake_identify_code).page(params[:page])
  end

  # GET /sakenote/sakes/1
  # GET /sakenote/sakes/1.json
  def show
  end

  # GET /sakenote/sakes/new
  def new
    @sakenote_sake = Sakenote::Sake.new
  end

  # GET /sakenote/sakes/1/edit
  def edit
  end

  # POST /sakenote/sakes
  # POST /sakenote/sakes.json
  def create
    @sakenote_sake = Sakenote::Sake.new(sakenote_sake_params)

    respond_to do |format|
      if @sakenote_sake.save
        format.html { redirect_to @sakenote_sake, notice: 'Sake was successfully created.' }
        format.json { render :show, status: :created, location: @sakenote_sake }
      else
        format.html { render :new }
        format.json { render json: @sakenote_sake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sakenote/sakes/1
  # PATCH/PUT /sakenote/sakes/1.json
  def update
    respond_to do |format|
      if @sakenote_sake.update(sakenote_sake_params)
        format.html { redirect_to @sakenote_sake, notice: 'Sake was successfully updated.' }
        format.json { render :show, status: :ok, location: @sakenote_sake }
      else
        format.html { render :edit }
        format.json { render json: @sakenote_sake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sakenote/sakes/1
  # DELETE /sakenote/sakes/1.json
  def destroy
    @sakenote_sake.destroy
    respond_to do |format|
      format.html { redirect_to sakenote_sakes_url, notice: 'Sake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sakenote_sake
      @sakenote_sake = Sakenote::Sake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sakenote_sake_params
      params.fetch(:sakenote_sake, {})
    end
end
