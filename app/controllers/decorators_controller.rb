class DecoratorsController < ApplicationController
  before_action :set_decorator, only: [:show, :update, :destroy]

  # GET /decorators
  def index
    @decorators = Decorator.all

    render json: @decorators
  end

  # GET /decorators/1
  def show
    render json: @decorator
  end

  # POST /decorators
  def create
    @decorator = Decorator.new(decorator_params)

    if @decorator.save
      render json: @decorator, status: :created, location: @decorator
    else
      render json: @decorator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /decorators/1
  def update
    if @decorator.update(decorator_params)
      render json: @decorator
    else
      render json: @decorator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /decorators/1
  def destroy
    @decorator.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_decorator
      @decorator = Decorator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def decorator_params
      params.require(:decorator).permit(:display_name, :username, :email, :password_digest)
    end
end
