class AlternativeNamesController < ApplicationController
  before_action :set_alternative_name, only: [:show, :edit, :update, :destroy]

  # GET /alternative_names
  # GET /alternative_names.json
  def index
    @alternative_names = AlternativeName.display_data(params[:page], params[:sort_by])
  end

  # GET /alternative_names/1
  # GET /alternative_names/1.json
  def show
  end

  # GET /alternative_names/new
  def new
    @alternative_name = AlternativeName.new
  end

  # GET /alternative_names/1/edit
  def edit
  end

  # POST /alternative_names
  # POST /alternative_names.json
  def create
    @alternative_name = AlternativeName.new(alternative_name_params)

    respond_to do |format|
      if @alternative_name.save
        format.html { redirect_to @alternative_name, notice: 'Alternative name was successfully created.' }
        format.json { render action: 'show', status: :created, location: @alternative_name }
      else
        format.html { render action: 'new' }
        format.json { render json: @alternative_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alternative_names/1
  # PATCH/PUT /alternative_names/1.json
  def update
    respond_to do |format|
      if @alternative_name.update(alternative_name_params)
        format.html { redirect_to @alternative_name, notice: 'Alternative name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @alternative_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alternative_names/1
  # DELETE /alternative_names/1.json
  def destroy
    @alternative_name.destroy
    respond_to do |format|
      format.html { redirect_to alternative_names_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alternative_name
      @alternative_name = AlternativeName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alternative_name_params
      params.require(:alternative_name).permit(:name)
    end
end
