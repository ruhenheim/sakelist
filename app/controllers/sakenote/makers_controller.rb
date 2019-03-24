class Sakenote::MakersController < ApplicationController
  before_action :set_sakenote_maker, only: [:show, :edit, :update, :destroy]

  # GET /sakenote/makers
  # GET /sakenote/makers.json
  def index
    @q = Sakenote::Maker.ransack(params[:q])
    @q.sorts = ['maker_id asc']
    @sakenote_makers = @q.result
                    .includes(:sakes)
                    .order(:maker_id).page(params[:page])
  end

  # GET /sakenote/makers/1
  # GET /sakenote/makers/1.json
  def show
  end

  # GET /sakenote/makers/new
  def new
    @sakenote_maker = Sakenote::Maker.new
  end

  # GET /sakenote/makers/1/edit
  def edit
  end

  # POST /sakenote/makers
  # POST /sakenote/makers.json
  def create
    @sakenote_maker = Sakenote::Maker.new(sakenote_maker_params)

    respond_to do |format|
      if @sakenote_maker.save
        format.html { redirect_to @sakenote_maker, notice: 'Maker was successfully created.' }
        format.json { render :show, status: :created, location: @sakenote_maker }
      else
        format.html { render :new }
        format.json { render json: @sakenote_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sakenote/makers/1
  # PATCH/PUT /sakenote/makers/1.json
  def update
    respond_to do |format|
      if @sakenote_maker.update(sakenote_maker_params)
        format.html { redirect_to @sakenote_maker, notice: 'Maker was successfully updated.' }
        format.json { render :show, status: :ok, location: @sakenote_maker }
      else
        format.html { render :edit }
        format.json { render json: @sakenote_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sakenote/makers/1
  # DELETE /sakenote/makers/1.json
  def destroy
    @sakenote_maker.destroy
    respond_to do |format|
      format.html { redirect_to sakenote_makers_url, notice: 'Maker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sakenote_maker
      @sakenote_maker = Sakenote::Maker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sakenote_maker_params
      params.fetch(:sakenote_maker, {})
    end
end
