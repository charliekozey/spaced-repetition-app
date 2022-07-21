class DecoratorCartsController < ApplicationController
  before_action :set_decorator_cart, only: [:show, :update, :destroy]

  # GET /decorator_carts
  def index
    @decorator_carts = DecoratorCart.all

    render json: @decorator_carts
  end

  # GET /decorator_carts/1
  def show
    render json: @decorator_cart
  end

  # POST /decorator_carts
  def create
    @decorator_cart = DecoratorCart.new(decorator_cart_params)

    if @decorator_cart.save
      render json: @decorator_cart, status: :created, location: @decorator_cart
    else
      render json: @decorator_cart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /decorator_carts/1
  def update
    if @decorator_cart.update(decorator_cart_params)
      render json: @decorator_cart
    else
      render json: @decorator_cart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /decorator_carts/1
  def destroy
    @decorator_cart.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_decorator_cart
      @decorator_cart = DecoratorCart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def decorator_cart_params
      params.fetch(:decorator_cart, {})
    end
end
