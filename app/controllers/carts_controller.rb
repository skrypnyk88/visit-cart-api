class CartsController < ApplicationController
  include Attachable
  before_action :set_cart, only: [:show, :update, :upload]

  def index
    @carts = Cart.where(['visible = ?', 'true']).includes(:attachment)
    if params[:q].present?
      @carts = @carts.search(params[:q], load: true)
    else
      @carts
    end
  end

  def create
    @cart = Cart.create!(cart_params)
  end

  def show; end

  def update
    @cart.update(cart_params)
    head :no_content
  end

  def upload
    attachment = attachment_uploader.call(attachment_owner: @cart)
    if attachment.valid?
      render :show, status: :created
    else
      render json: attachment.errors.full_messages, status: :bad_request
    end
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
