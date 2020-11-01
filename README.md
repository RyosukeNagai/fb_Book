# README
![image](https://user-images.githubusercontent.com/64464083/97805617-8bbea300-1c9a-11eb-92be-1d23894692fd.png)


# このアプリについて
 - お気に入りの本紹介サイト
 - フォロー機能
 - 検索機能
 - PV数取得
 - Hamlの導入
 - 使用Gem

# Gem/ver
* Ruby:2.5.7

* Rails:'~> 5.2.4', '>= 5.2.4.4'

* System dependencies
 - gem 'devise'
 - gem 'haml_rails'
 - gem 'font-awesome-sass'
 - gem 'bootstrap-sass', '~> 3.3.6'
 - gem 'refile'
 - gem 'refile-mini_magick'
 - gem 'jquery-rails'
 - gem 'kaminari','~> 1.2.1'
 - gem 'impressionist', '~>1.6.1'

## usersテーブル
|Column|Type|
|------|----|
|name|string|
|email|string|
|password|string|
|profile_image_id|string|
|introduction|text|
|impressions_count|integer|

### Association
 -has_many: book<br>
 -has_many :reviews, dependent: :destroy

## bookテーブル
|Column|Type|
|------|----|
|title|string|
|body|text|
|user_id|integer|

### Association
 -belongs_to: user<br>
 -has_many :reviews, dependent: :destroy

## relationshipテーブル
|Column|Type|
|------|----|
|follower_id|integer|
|followed_id|integer|

### Association
 -belongs_to :follower, class_name: "User"
 -belongs_to :followed, class_name: "User"

## impressionsテーブル
|Column|Type|
|------|----|
|impressionable_type|string|
|impressionable_id|integer|
|user_id|integer|
|controller_name|string|
|action_name|string|
|view_name|string|
|request_hash|string|
|ip_address|string|
|session_hash|string|
|message|t.text|
|referrer|t.text|
|params|t.text|



