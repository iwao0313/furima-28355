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
| name                  | string | null: false |
| images                | text   | null: false |
| explain               | text   | null: false |
| price                 | integer| null: false |
| cate_id               | integer| null: false |
| state_id              | integer| null: false |
| burden_id             | integer| null: false |
| ship_form_id          | integer| null: false |
| shipping_days_id      | integer| null: false |
| user_id               | integer| null: false,foreign_key: true |

### Association

- belong_to :user
- has_one   :purchase



## address テーブル

| Column            | Type       | Options                      |
| ------            | ---------- | -----------                  |
| zip_code          | string     | null: false                  |
| province_id       | integer    | null: false                  |
| municipalities    | string     | null: false                  |
| street_number     | string     | null: false                  |
| building_name     | string     |                              |
| telephone_number  | string     | null: false                  |
| purchase_id       | integer    | null: false,foreign_key: true|



### Association


  belongs_to_:purchase


## purchase テーブル
| Column          | Type       | Options                      |
| ------          | ---------- | -----------                  |
| user            | reference  | null: false,foreign_key: true|
| item            | reference  | null: false,foreign_key: true|

### Association

  belongs_to :user
  belongs_to :items
  has_one :address