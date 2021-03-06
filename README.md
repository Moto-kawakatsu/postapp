# PostApp（アプリケーション名）  
 
# 概要  
主にイラストを投稿しユーザー同士が評価し合うアプリケーションです。
  　
# 制作背景  
イラストを描くのが好きな友人が使えるように、その友人目線で使いやすいアプリケーションの制作を心がけました。
具体的にはその友人からPostAppが自体がポートフォリオとしても使えるように、他のユーザーから受けた評価をもとに
人気イラストが分かるようにして欲しいという要望があったので、それを実現するため、いいね機能を応用して、
マイページで人気順にイラストを表示させる実装をしました。この制作を通して、ユーザー目線を意識した開発を行うことが
できたのは経験として大きいと思います。
　　
# アプリケーションの説明 
<h2>ユーザーはタイトルと説明を記述し投稿することができます。</h2>

  
<img width="687" alt="スクリーンショット 2020-11-20 10 55 52" src="https://user-images.githubusercontent.com/70629162/99747996-f7b85c80-2b1e-11eb-9e07-c7f91d5968f4.png">
<br>
<h2>投稿されたイラストはユーザー全員が以下の写真のように見ることができます。</h2>
<br>    
<br>    
<img width="879" alt="スクリーンショット 2020-11-20 10 53 24" src="https://user-images.githubusercontent.com/70629162/99747817-a019f100-2b1e-11eb-9780-a9644796b56d.png">
<br>  
<br>    
<h2>投稿者が虫眼鏡の上にカーソルを持っていくと「詳細」「編集」「削除」のボタンが出てきます。</h2>
<br>    
<img width="829" alt="スクリーンショット 2020-11-20 10 57 02" src="https://user-images.githubusercontent.com/70629162/99748068-21718380-2b1f-11eb-9b3d-479808650ba3.png">
<br>  
<br>    
<h2>詳細ページではイラストに対してコメントをすることができます。</h2>
<br>
<img width="822" alt="スクリーンショット 2020-11-20 10 54 55" src="https://user-images.githubusercontent.com/70629162/99747935-d5beda00-2b1e-11eb-8e7b-ce1296b5189a.png">
<br>
<br>  
<h2>検索機能を用いて気になる画像のみを表示させることもできます。</h2>
<img width="853" alt="スクリーンショット 2020-11-20 11 13 25" src="https://user-images.githubusercontent.com/70629162/99749233-6b5b6900-2b21-11eb-8d97-37545606c4ca.png">
                         <img width="225" alt="スクリーンショット 2020-11-20 11 15 25" src="https://user-images.githubusercontent.com/70629162/99749354-b2e1f500-2b21-11eb-9675-302851deac28.png">
<h2>検索した結果...
キーワードの『TWICE』に関連した画像のみ表示！</h2>
<br>  
<img width="855" alt="スクリーンショット 2020-11-20 10 48 53" src="https://user-images.githubusercontent.com/70629162/99747506-fe929f80-2b1d-11eb-8bc3-f80cf31b8c95.png">
<br>
<br>  
<h2>人気順ボタンを押すと、いいねが多く付いている順にイラストを表示しているページに遷移します。</h2>
<img width="1294" alt="スクリーンショット 2020-11-20 11 09 18" src="https://user-images.githubusercontent.com/70629162/99748927-d7899d00-2b20-11eb-9d9b-4da1589dda36.png">
<br>
<br>  
<h2>他のユーザーのページにて、お問い合わせすることができる(ようにする予定)</h2>
<img width="1090" alt="スクリーンショット 2020-11-20 11 33 44" src="https://user-images.githubusercontent.com/70629162/99750732-4288a300-2b24-11eb-83d4-9c988798ee9a.png">



# 本番環境
URL : https://mypics524.herokuapp.com/  
user : admin　
pass : 2222 
  
Log in Email：a@gmail.com  
Log in pass：aaaa111
  
    
# 特記事項
お問い合わせフォームはまだ未完成ですが、今後完成させていきたいと思います。
 
   
# 作成者情報
  
* 川勝基広
* 転職活動中 2020年 11月開始（TECH::CAMP 卒業生）
* kawakatu1227@gmail.com
 
  



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


# テーブル設計

# users テーブル

| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| nickname         | string | null: false |
| email            | string | null: false |
| password         | string | null: false |
| password_confirm | string | null: false |

### Association

- has_many :posts

## posts テーブル

| Column               | Type       | Options     |
| -------------------- | ---------- | ----------- |
| user                 | references | null: false |
| title                | string     | null: false |
| text                 | string     | null: false |


### Association

- belongs_to :user
- has_one :order


## likes テーブル

| Column           | Type       | Options     |
| ---------------- | ---------- | ----------- |
| post_id          | references | null: false |
| user_id          | references | null: false |

### Association

- belongs_to :user
- belongs_to :post


## comments テーブル

| Column           | Type       | Options     |
| ---------------- | ---------- | ----------- |
| post_id          | references | null: false |
| user_id          | references | null: false |
| text             | string     | null: false |


### Association

- belongs_to :user
- belongs_to :item