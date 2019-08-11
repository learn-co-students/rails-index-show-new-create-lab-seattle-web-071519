class CreateCoupons < ActiveRecord::Migration
    def change
        create_table :coupons do |t|
            t.string :coupon_code
            t.string :store

            t.timestamps null: false
        end
    end
end


# You will need to create a coupons table with coupon_code and store columns, which should both be of the string data type.