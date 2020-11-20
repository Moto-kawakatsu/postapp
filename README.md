# POSTAPP（アプリケーション名）

# 概要
主にイラストを
主にイラストを投稿しユーザー同士が評価し合うアプリケーションです。
　

# 制作背景
エンジニアとして大事なユーザーファーストの視点を身に着けるために作成しました。
具体的には、イラストを描くのが好きな友人が使えるように
どのような機能を作るべきか他社目線で考えながら作成しました。
    
  
# アプリケーションの説明 
ユーザーはタイトルと説明を記述し投稿することができます。
<br>    
<img width="687" alt="スクリーンショット 2020-11-20 10 55 52" src="https://user-images.githubusercontent.com/70629162/99747996-f7b85c80-2b1e-11eb-9e07-c7f91d5968f4.png">
<br>  
投稿されたイラストはユーザー全員が以下の写真のように見ることができます。
<img width="879" alt="スクリーンショット 2020-11-20 10 53 24" src="https://user-images.githubusercontent.com/70629162/99747817-a019f100-2b1e-11eb-9780-a9644796b56d.png">

  
投稿者が虫眼鏡の上にカーソルを持っていくと「詳細」「編集」「削除」のボタンが出てきます。
<img width="829" alt="スクリーンショット 2020-11-20 10 57 02" src="https://user-images.githubusercontent.com/70629162/99748068-21718380-2b1f-11eb-9b3d-479808650ba3.png">
<br>
<br>  
詳細ページではイラストに対してコメントをすることができます。
<img width="822" alt="スクリーンショット 2020-11-20 10 54 55" src="https://user-images.githubusercontent.com/70629162/99747935-d5beda00-2b1e-11eb-8e7b-ce1296b5189a.png">

<br>  
検索機能を用いて気になる画像のみを表示させることもできます。
<img width="833" alt="スクリーンショット 2020-11-20 11 03 10" src="https://user-images.githubusercontent.com/70629162/99748504-fc314500-2b1f-11eb-9b34-0848264029a9.png">
<br>  
<br>  
<img width="855" alt="スクリーンショット 2020-11-20 10 48 53" src="https://user-images.githubusercontent.com/70629162/99747506-fe929f80-2b1d-11eb-8bc3-f80cf31b8c95.png">


# 本番環境
URL：https://recture.herokuapp.com/  
user : admin　
pass : 2222 
  
Log in Email(教員用)：test-taro@gmail.com  
Log in pass：test1212
  
  
# 特徴
### １．匿名質問  
生徒が投稿に対して質問する際、どの生徒が質問をしたのか生徒は分からない
  
  
### ２．共感ボタン  
他の生徒がした質問に対して、共感ボタンを押すことで、何人の生徒が同じような疑問を持っているのか把握できる
  
  
### ３．教員のみが持つ特権    
◯ルーム作成・削除  
◯生徒がした投稿を消すことができる    
◯どの生徒が質問をしたのか分かる  
    
# 動作確認の手順
１．Sign Upをクリックし、”生徒”としてユーザー登録をする。  
２，もう一度、Sign Upを次は”教員”として行う。  
３．教員としてログインできたら、『部屋を作る』をクリックし、部屋作成ページに遷移。  
４．ルーム名を記入後、部屋に招待したいユーザーをクリックし、"create room"をクリック。  
５．トップページ作成した部屋の名前が表示されているので、それをクリック。  
６．メッセージ入力欄があるので、文字を打ち込み投稿する。  
７．投稿されたメッセージをクリックすると、質問ページに遷移。  
８．質問ページの投稿された質問をクリックすると、その質問に対してのレスポンスページに遷移。  
  
# 特記事項
 
◯質問された内容に、他の生徒が答えて、その結果解決された場合には解決と表示されるよう今現在JavaScriptで実装していますので中途半端な形にはなっていますが、今後完成させる予定です。
<br>  
◯本番環境でのみCSSが反映されていない箇所がありますが、 動作確認に問題はありません。
 
   
# 作成者情報
  
* 川勝基広
* 転職活動中 2020年 11月開始（TechCamp卒業生）
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
