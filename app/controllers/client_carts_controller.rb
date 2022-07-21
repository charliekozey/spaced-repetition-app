class ClientCartsController < ApplicationController
  before_action :set_client_cart, only: [:show, :update, :destroy]

  # GET /client_carts
  def index
    @client_carts = ClientCart.all

    render json: @client_carts
  end

  # GET /client_carts/1
  def show
    render json: @client_cart
  end

  # POST /client_carts
  def create
    @client_cart = ClientCart.new(client_cart_params)

    if @client_cart.save
      render json: @client_cart, status: :created, location: @client_cart
    else
      render json: @client_cart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /client_carts/1
  def update
    if @client_cart.update(client_cart_params)
      render json: @client_cart
    else
      render json: @client_cart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /client_carts/1
  def destroy
    @client_cart.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_cart
      @client_cart = ClientCart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_cart_params
      params.fetch(:client_cart, {})
    end
end
