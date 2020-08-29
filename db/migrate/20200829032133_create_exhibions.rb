class CreateExhibions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibions do |t|
      t.string     :category_id            , null: false
      t.string     :days_id                , null: false
      t.string     :exhibion _id           , null: false
      t.string     :prefecture _id         , null: false
      t.string     :shipping_fee_burden_id , null: false
      t.string     :status_id              , null: false
      t.timestamps
    end
  end
end
