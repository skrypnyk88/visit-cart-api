class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :update, :destroy]

  # GET /carts
  def index
    # binding.pry
    @carts = Cart.where(["visible = ?", "true"])
  end

  # POST /carts
  def create
    @cart = Cart.create!(cart_params)
  end

  # GET /carts/:id
  def show; end

  # PUT /carts/:id
  def update
    @cart.update(cart_params)
    head :no_content
  end

  private

  def cart_params
    # whitelist params
    params.require(:cart).permit(:first_name,
                                    :last_name,
                                    :position,
                                    :phone,
                                    :city,
                                    :streat,
                                    :building,
                                    :email,
                                    :company_name,
                                    :visible)
  end

  def set_cart
    @cart = Cart.find(params[:id])
  end
end
