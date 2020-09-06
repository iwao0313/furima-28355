class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category,days,exhibion,prefecture,shiping_fee_burden,status

  #空の投稿を保存できないようにする
  validates :product_name,explanation

  #選択が「--」のままになっていないか
  with_options numericality: { other_than: 1 } do
    validates :category_id,days_id,exhibion_id,prefecture_id,shiping_fee_burden_id,status_id
  end
end