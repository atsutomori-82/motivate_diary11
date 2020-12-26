# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users テーブル

| Column             | Type    | options                 |
| ------------------ | ------- | ----------------------- |
| nickname           | string  | null:false              |
| email              | string  | null:false, unique: true|
| encrypted_password | string  | null: false             |

### Association

- has_many :diaries

## diary テーブル

| Column             | Type    | options                 |
| ------------------ | ------- | ----------------------- |
| image              | text    | null:false              |
| calendar_date      | string  | null:false, unique: true|
| text               | text    | null: false             |
| condition          | string  | null: false             |
| motivation         | string  | null: false             |
| work_volume        | string  | null: false             |

### Association

- belongs_to :users
- has_one :cheer_up

## cheer_up テーブル

| Column             | Type        | options                        |
| ------------------ | ----------- | ------------------------------ |
| motivate_text      | text        | null:false                     |
| image              | references  | null:false, foreign_keys: true |

### Association

- belongs_to :diary
