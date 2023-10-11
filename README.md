# テーブル設計

## user テーブル

| Column            | Type   | Options     |
| ------------------ | -------| ----------- |
| last_name          | string | null: false |
| first_name         | string | null: false |
| kana_last_name     | string | null: false |
| kane_first_name    | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :recipes
- has_one :destination


## recipe テーブル
    
| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| title       | string     | null: false                   |
| ingredients | json       | null: false                   |
| seasonings  | json       | null: false                   |
| steps       | text       | null: false                   |
| category    | integer    | null: false                   |
| admin       | references | null: false, foreign_key:true |

### Association
-belongs_to :admin
-has_many :recipe_menu
-has_many :menu, through: recipe_menu


## menu テーブル
| Column  | Type       | Options                       |
| ------- | ---------- | ----------------------------- |
| date    | date       | null: false                   |
| recipe  | references | null: false, foreign_key:true |

### Association
-has_many :recipe_menu
-has_many :menu, through: recipe_menu


## recipe_menu テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| recipe | references | null: false, foreign_kye: true |
| menu   | references | null: false, foreign_kye: true |

### Association

-belongs_to :room
-belongs_to :user

## destination

| Column         | Type       | Options                        |
| -------------- | ---------- | ------ ------------------------|
| postal_code    | string     | null: false                    | 
| prefecture_id  | integer    | null: false                    |
| city           | string     | null: false                    |
| address        | string     | null: false                    |
| apartment_name | string     |                                |
| phone_number   | string     | null: false                    |
| user           | references | null: false, foreign_kye: true |

### Association
-belongs_to :user
