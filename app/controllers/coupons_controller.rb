class CouponsController < ApplicationController

    def show
        @coupon = Coupon.find(params[:id])
    end

    def index
    end

    def create
        @coup = Coupon.new
        @coup.store = params[:coupon][:store]
        @coup.coupon_code = params[:coupon][:coupon_code]
        @coup.save
        redirect_to "/coupons/#{@coup.id}"
    end

    def new
    end
end
