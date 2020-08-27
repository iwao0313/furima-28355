# テーブル設計

## users テーブル

| Column       | Type   | Options     |
| --------     | ------ | ----------- |
| name         | string | null: false |
| nickname     | string | null: false |
| email        | string | null: false |
| password     | string | null: false |
| name_zenkaku | string | null: false |
| name_katakana| string | null: false |
| birthday     | date   | null: false |

### Association

- has_many :exhibions
- has_one  :buys

## exhibions テーブル

| Column             | Type   | Options     |
| ------             | ------ | ----------- |
| product_name       | string | null: false |
| explanation        | string | null: false |
| price              | string | null: false |
| category           | string | null: false |
| status             | string | null: false |
| shipping_fee_burden| string | null: false |
| shipping_region    | string | null: false |
| days               | date   | null: false |

### Association

- has_many :users
- has_one  :buys

## buys テーブル

| Column          | Type       | Options    |
| ------          | ---------- | -----------|
| product_image   | string     | null: false|
| price           | string     | null: false|
| card_infomation | integer    | null: false|
| expiration_date | date       | null: false|
| security_code   | integer    | null: false|
| postal_code     | integer    | null: false|
| prefecture      | string     | null: false|
| city            | string     | null: false|
| address         | string     | null: false|
| building_name   | string     | null: false|
| phone number    | integer    | null: false|
### Association

- has_many :users
- has_one  :exhibions

