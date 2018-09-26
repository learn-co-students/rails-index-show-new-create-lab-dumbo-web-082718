class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupons = Coupond.find(params[:id])
  end

def new
  @coupon = Coupon.new
end

def create
  @coupon = Coupon.new
  @coupon.store = params[:store]
end

end
