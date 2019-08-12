class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
        #@coupon = Coupon.new
    end

    def create
        #byebug
        @coupon = Coupon.new(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    # def edit
    #     @coupon = Coupon.find(params[:id])
    # end

    # def update
    #     @coupon = Coupon.new()#####
    #     @coupon.save
    #     redirect_to coupon_path(@coupon)
    # end

    # def delete
    #     @coupon = Coupon.find(params[:id])
    #     @coupon.delete
    #     redirect to coupons_path
    # end


end
