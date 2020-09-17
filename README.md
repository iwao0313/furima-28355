# テーブル設計

## users テーブル

| Column              | Type   | Options     |
| --------            | ------ | ----------- |
| nickname            | string | null: false |
| email               | string | null: false |
| password            | string | null: false |
| last_name           | string | null: false |
| first_name          | string | null: false |
| last_name-f         | string | null: false |
| first_name-f        | string | null: false |
| birthday            | date   | null: false |

### Association

- has_many :items
- has_many :purchase

## items テーブル

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
| user_id               | integer| null: false,foreign_key: true |

### Association

- belong_to :user
- has_one   :purchase

## address テーブル

| Column            | Type       | Options                      |
| ------            | ---------- | -----------                  |
| postal_code       | string     | null: false                  |
| prefecture_id     | integer    | null: false                  |
| city              | string     | null: false                  |
| address           | string     | null: false                  |
| building_name     | string     |                              |
| phone_number      | string     | null: false                  |
| item_purchase_id  | integer    | null: false,foreign_key: true|


### Association

  belongs_to_:purchase


## purchase テーブル
| Column          | Type       | Options                      |
| ------          | ---------- | -----------                  |
| user            | reference  | null: false,foreign_key: true|
| exhibition      | reference  | null: false,foreign_key: true|

### Association

  belongs_to :user
  belongs_to :items
  has_one :address