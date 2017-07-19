class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :update, :destroy]

  def index
    @carts = Cart.where(["visible = ?", "true"])
  end

  def create
    @cart = Cart.create!(cart_params)
  end

  def show; end

  def update
    @cart.update(cart_params)
    head :no_content
  end

  private

  def cart_params
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
