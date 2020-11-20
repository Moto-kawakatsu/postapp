# POSTAPP（アプリケーション名）

# 概要
主にイラストを
主にイラストや写真を投稿し、ユーザー同士が評価し合うアプリケーションです。
　

# 制作背景
エンジニアとして大事なユーザーファーストの視点を身に着けるために作成しました。
具体的には、イラストを描くのが好きな友人が使えるように
どのような機能を作るべきか他社目線で考えながら作成しました。
    
  
# アプリケーションの説明 
ユーザーはタイトルと説明を記述し投稿することができます。
<br>  

<br>
<img width="1439" alt="スクリーンショット 2020-11-20 10 09 01" src="https://user-images.githubusercontent.com/70629162/99743239-a2794c80-2b18-11eb-8c40-b884b0b8ef3f.png">


<br>
<br>
投稿されたメッセージをクリックすると、そのメッセージの質問ページに遷移する。  
生徒は他の生徒がした質問に共感ボタンを押すことで意思を表示できる。  
<br>
<img width="800" alt="スクリーンショット 2020-11-08 17 11 07" src="https://user-images.githubusercontent.com/70629162/98460210-7dfea580-21e5-11eb-9578-4ba551e55d75.png">
<br>  
質問ページ投稿された質問をクリックすると、回答ページに遷移する。  
質問に回答できる生徒がいれば回答する。質問した生徒は問題が解決した場合、解決ボタンを押す。
<br>  
<img width="800" alt="スクリーンショット 2020-11-08 17 24 45" src="https://user-images.githubusercontent.com/70629162/98460398-79d38780-21e7-11eb-9861-18e6ca571fa4.png">

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
