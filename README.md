# テーブル設計

## users テーブル

| Column              | Type   | Options     |
| --------            | ------ | ----------- |
| nickname            | string | null: false |
| email               | string | null: false |
| password            | string | null: false |
| family_name_zenkaku | string | null: false |
| first_name_zenkaku  | string | null: false |
| family_name_katakana| string | null: false |
| first_name_katakana | string | null: false |
| birthday            | date   | null: false |

### Association

- has_many :exhibitions
- has_many :item_purchases

## exhibitions テーブル

| Column                | Type   | Options     |
| ------                | ------ | ----------- |
| product_name          | string | null: false |
| explanation           | text   | null: false |
| price                 | integer| null: false |
| category_id           | integer| null: false |
| status_id             | integer| null: false |
| shipping_fee_burden_id| integer| null: false |
| shipping_region_id    | integer| null: false |
| days_id               | integer| null: false |
| user_id               | integer| null: false |

### Association

- belong_to :user
- has_one   :item_purchase

## address テーブル

| Column            | Type       | Options    |
| ------            | ---------- | -----------|
| postal_code       | string     | null: false|
| prefecture_id     | integer    | null: false|
| city              | string     | null: false|
| address           | string     | null: false|
| building_name     | string     |            |
| phone_number      | string     | null: false|
| item_purchase_id  | integer    | null: false|


### Association

  belongs_to_:item_purchase


## item_purchases テーブル
| Column          | Type       | Options                      |
| ------          | ---------- | -----------                  |
| user            | reference  | null: false,foreign_key: true|
| exhibition      | reference  | null: false,foreign_key: true|

### Association

  belongs_to :user
  belongs_to :exhibition
  belongs_to :address