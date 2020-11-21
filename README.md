# RestaurantApp
レストラン料理注文WEBアプリ
<br>
<br>
<br>
■ VIEW  (Heroku)<br>
https://restaurant-app-rdb-junji.herokuapp.com/index.php
<br>
<br>
<br>
■ 画面構成
<br>
![ポートフォリオ画面-01](https://user-images.githubusercontent.com/54252926/95788642-e0fc3a00-0d16-11eb-8caf-847d587d7cde.jpg)

■ ファイル構成
<pre>
●画面クラス ------------------------------------
トップ画面
index.php

レビュー閲覧画面
show.php

注文内容確認画面
confirm.php

★スタイルシート ---------------
stylesheet.css

■topへ戻る機能  ----------------
index.js

●処理クラス    --------------------------------
■メニュークラス
メニュー(スーパークラス)
menu.php
  |
  |--フード(メニュー継承)
  |   food.php
  |
  |--ドリンク(メニュー継承)
      drink.php
          |
          |--アルコール(ドリンク継承)
             alcohol.php
             
■レビュークラス
review.php

■ユーザークラス
user.php

■チャート      --------------------------------
チャート描画スクリプト
Chart.js
チャートデータ作成
chartData.php

●データクラス   --------------------------------
data.php
</pre>
