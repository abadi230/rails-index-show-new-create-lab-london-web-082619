class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = set_coupon
  end

  def new
    @coupon = Coupon.new
  end

  def edit
    @coupon = set_coupon
  end

  def create
    @coupon = Coupon.create(coupon_params)

    redirect_to coupon_path(@coupon)
  end

  def update
    @coupon = set_coupon
    @coupon.update(coupon_params)

    redirect_to coupon_path(@coupon)
  end

  def destroy
    Coupon.destroy(params[:id])

    redirect_to coupons_path
  end

  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
end
