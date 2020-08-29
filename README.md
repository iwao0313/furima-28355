# テーブル設計

## users テーブル

| Column              | Type   | Options     |
| --------            | ------ | ----------- |
| name                | string | null: false |
| nickname            | string | null: false |
| email               | string | null: false |
| password            | string | null: false |
| family_name_zenkaku | string | null: false |
| first_name_zenkaku  | string | null: false |
| family_name_katakana| string | null: false |
| first_name_katakana | string | null: false |
| birthday            | date   | null: false |

### Association

- has_many :exhibions
- has_many :buys

## exhibions テーブル

| Column             | Type   | Options     |
| ------             | ------ | ----------- |
| product_name       | string | null: false |
| explanation        | text   | null: false |
| price              | string | null: false |

### Association

- belong_to :user
- has_one   :buy

## buys テーブル

| Column          | Type       | Options    |
| ------          | ---------- | -----------|
| postal_code     | string     | null: false|
| city            | string     | null: false|
| address         | string     | null: false|
| building_name   | string     |            |
| phone_number    | string     | null: false|

### Association

- belongs_to :exhibion

