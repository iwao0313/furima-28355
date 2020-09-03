class CreateExhibions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibions do |t|
      t.string     :category_id            , null: false
      t.date       :days_id                , null: false
      t.string     :exhibion _id           , null: false
      t.integer    :prefecture _id         , null: false
      t.string     :shipping_fee_burden_id , null: false
      t.string     :status_id              , null: false
      t.integer    :transaction_id         , null: false
      t.integer    :user_id                , null: false
      t.timestamps
    end
  end
end
