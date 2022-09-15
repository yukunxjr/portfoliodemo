# class DastboxesController < ApplicationController
#     #    カートアイテムの追加
#     def add_item
#         # カートに入っていない商品を追加する場合はItemレコードを新規作成
#         dastbox = dastboxes.find_by(memo_id: memo_id) || dastboxes.build(memo_id: memo_id)
#         dastbox.quantity += dastbox.to_i
#         item.save
#     end

#     #    カートアイテムの削除
#     def delete_item(product_id:)
#         items.find_by(product_id: product_id).destroy
#     end

#     #    カートの合計の算出
#     # def total
#     #     items.sum("quantity*price")
#     # end
# end

