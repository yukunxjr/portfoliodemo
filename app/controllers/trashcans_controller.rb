# class TrashcansController < ApplicationController
#     def index
#     @total_price = my_cart.total_price
#     @items = my_cart.items
#     end

#     def create
#     if my_cart.add_item(product_id: params[:product_id], quantity: params[:quantity])
#         # カートアイテムの追加に成功した時の処理
#     else
#         # 失敗した時の処理
#     end
#     end

#     def update
#     if my_cart.update_item(product_id: params[:product_id], quantity: params[:quantity])
#         # カートアイテムの更新に成功した時の処理
#     else
#         # 失敗した時の処理
#     end
#     end

#     def destroy
#     if my_cart.delete_item(product_id: params[:product_id])
#         # カートアイテムの削除に成功した時の処理
#     else
#         # 失敗した時の処理
#     end
#     end

#     private

#     def my_cart
#     Cart.find(params[:cart_id])
#     end
# end
# end
