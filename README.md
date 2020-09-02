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

- has_many :exhibion
- has_many :address

## exhibions テーブル

| Column             | Type   | Options     |
| ------             | ------ | ----------- |
| product_name       | string | null: false |
| explanation        | text   | null: false |
| price              | string | null: false |
| category           | string | null: false |
| status             | string | null: false |
| shipping_fee_burden| string | null: false |
| shipping_region    | string | null: false |
| days               | date   | null: false |

### Association

- belong_to :user
- has_one   :address

## address テーブル

| Column          | Type       | Options    |
| ------          | ---------- | -----------|
| postal_code     | string     | null: false|
| prefecture      | integer    | null: false|
| city            | string     | null: false|
| address         | string     | null: false|
| building_name   | string     |            |
| phone_number    | string     | null: false|

### Association

- belongs_to :exhibions
  belongs_to :address
  belongs_to_:transaction


## transaction テーブル
| Column          | Type       | Options    |
| ------          | ---------- | -----------|
| user            | reference  | null: false|
| exhibition      | reference  | null: false|

### Association

  belongs_to :user