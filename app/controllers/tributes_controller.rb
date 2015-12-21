class TributesController < ApplicationController
  before_action :set_tribute, only: [:show, :edit, :update, :destroy]

  # GET /tributes
  # GET /tributes.json
  def index
    @tributes = Tribute.all
  end

  # GET /tributes/1
  # GET /tributes/1.json
  def show
  end

  # GET /tributes/new
  def new
    @tribute = Tribute.new
  end

  # GET /tributes/1/edit
  def edit
  end

  # POST /tributes
  # POST /tributes.json
  def create
    @tribute = Tribute.new(tribute_params)

    respond_to do |format|
      if @tribute.save
        format.html { redirect_to @tribute, notice: 'Tribute was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tribute }
      else
        format.html { render action: 'new' }
        format.json { render json: @tribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tributes/1
  # PATCH/PUT /tributes/1.json
  def update
    respond_to do |format|
      if @tribute.update(tribute_params)
        format.html { redirect_to @tribute, notice: 'Tribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tributes/1
  # DELETE /tributes/1.json
  def destroy
    @tribute.destroy
    respond_to do |format|
      format.html { redirect_to tributes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tribute
      @tribute = Tribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tribute_params
      params.require(:tribute).permit(:title, :url)
    end
end
