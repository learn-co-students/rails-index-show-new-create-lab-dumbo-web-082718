class CouponsController < ApplicationController

def index
  @coupons = Coupon.all
end

def show
  # byebug
 @coupon = Coupon.find(params[:id])

end

def new
end

def create
@coupon = Coupon.create(coupons_params)
redirect_to coupon_path(@coupon)
end

def form
end




  private
def coupons_params
    params.require(:coupon).permit(:coupon_code,
     :store)
     #params = {
   #   coupon: {
   #     coupon_code
   #     store
   #   }
   # }
  end

end
