class TfeaturesController < ApplicationController
  before_action :set_tfeature, only: [:show, :update, :destroy]

  # GET /tfeatures
  def index
    @tfeatures = Tfeature.all

    render json: @tfeatures
  end

  # GET /tfeatures/1
  def show
    render json: @tfeature
  end

  # POST /tfeatures
  def create
    @tfeature = Tfeature.new(tfeature_params)

    if @tfeature.save
      render json: @tfeature, status: :created, location: @tfeature
    else
      render json: @tfeature.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tfeatures/1
  def update
    if @tfeature.update(tfeature_params)
      render json: @tfeature
    else
      render json: @tfeature.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tfeatures/1
  def destroy
    @tfeature.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tfeature
      @tfeature = Tfeature.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tfeature_params
      params.require(:tfeature).permit(:name, :feature_id)
    end
end
