# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coupons = Coupon.create([
    {coupon_code: "0001", store: "store1"},
    {coupon_code: "0002", store: "store2"},
    {coupon_code: "0003", store: "store3"}
])