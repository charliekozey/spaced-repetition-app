class PieceTypesController < ApplicationController
  before_action :set_piece_type, only: [:show, :update, :destroy]

  # GET /piece_types
  def index
    @piece_types = PieceType.all

    render json: @piece_types
  end

  # GET /piece_types/1
  def show
    render json: @piece_type
  end

  # POST /piece_types
  def create
    @piece_type = PieceType.new(piece_type_params)

    if @piece_type.save
      render json: @piece_type, status: :created, location: @piece_type
    else
      render json: @piece_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /piece_types/1
  def update
    if @piece_type.update(piece_type_params)
      render json: @piece_type
    else
      render json: @piece_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /piece_types/1
  def destroy
    @piece_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece_type
      @piece_type = PieceType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def piece_type_params
      params.require(:piece_type).permit(:name)
    end
end
