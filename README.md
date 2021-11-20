# Jea-Pos

### ■  サイト概要
自分のデニムを投稿・好きなデニムに投票できるジーンズ愛に溢れたサイト。


<img width="1440" alt="スクリーンショット 2021-11-13 20 44 26" src="https://user-images.githubusercontent.com/80505290/141642619-f0e91ad1-af64-426c-8d75-287e8e0936aa.png">



### ■　テーマを選んだ理由
デニムの面白さを伝えたり、毎日楽しいデニムライフを送って欲しいとの思いで、このテーマを選びました。リジッドからはき始めたデニムは年数をかけると、自分の癖や生活がシワや色落ちとなって反映されていきます。このごまかしようのなさが、私がデニムを好きになった理由のひとつです。投稿では自分のデニムを育てていく経過を記録できる・閲覧できるということを目的にしています。購入日や洗濯回数などを登録し、デニムがどのように育てられて行ったのかを記録できるところが、他の投稿サイトとは異なる点です。今回このような投稿だけでなく、他のデニムに投票できるという機能をつけました。投票機能をつけることで、他ユーザーからの評価により、投稿写真も洗練され、デニムを履く楽しみが増えると思いました。毎日違ったカテゴリーで投票が決まり、サイトの使用率を上げる工夫も取り入れています。
このサイトを使って、より多くの方達がデニムを履き、デニム文化ができたら幸せだと思います。


### ■　ターゲットユーザ
* デニム好きな方・興味のある方
* 自分のデニムを投稿したい方
* 他のユーザーのデニムを見てみたいと思っている方
* 20~50代の男性


### ■　主な利用シーン
* 自分のデニムを共有したい時
* 他ユーザーのデニムを見たい時

## 　設計書
<img width="494" alt="スクリーンショット 2021-11-13 20 47 53" src="https://user-images.githubusercontent.com/80505290/141642622-b666c128-1317-44ec-8a88-e04f019d92a0.png">

## ■　チャレンジ要素一覧
<https://docs.google.com/spreadsheets/d/1Zb9D89e5YpM3IjRIyFZ0VmMF03UJE9jBmgXU0vrkoFA/edit#gid=0>

## ■　開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,PostgreSQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery, Slick
- IDE：Cloud9


## ■ 特徴的な機能
### 1, 投票機能
それぞれのカテゴリーへ１ユーザーが１回のみ、投票することができます。
投票数に応じて、その日の受賞者(Award)が決まります。
![ik1M1ZZonHvPmgfeHBL31636797154-1636797276](https://user-images.githubusercontent.com/80505290/141614909-c7b79f27-a1bd-4e2a-b6fa-82ca32321355.gif)

投票するとノミネートに記録される。
<img width="1026" alt="スクリーンショット 2021-11-13 19 55 45" src="https://user-images.githubusercontent.com/80505290/141622144-b30b718b-d2cf-44cf-957f-3652b55332ff.png">

投票が一番多かったデニムにAwardが授与されます。(Heroku Scheduleで自動化)
<img width="1026" alt="スクリーンショット 2021-11-13 19 56 20" src="https://user-images.githubusercontent.com/80505290/141622272-62920aad-224f-437f-93e9-e260e95425de.png">
### 2, ストレスフリーなコメント非同期機能
コメント投稿時、コメントフォーム表示・非表示、返信コメント表示・非表示は全てJavaScriptで実装しています。
![tPnQBFV3hi3XT4yFdSUN1636798039-1636798145](https://user-images.githubusercontent.com/80505290/141614927-32a6b098-4b88-4415-b8e0-bac4f1146164.gif)