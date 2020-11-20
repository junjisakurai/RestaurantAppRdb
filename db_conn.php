<?php 
function connection_db() {
	try {

	/*$ dsn = 'mysql: dbname = restaurant_db form; host = localhost; charset = utf 8'; 
	                                  $ user = 'root'; $ password = ''; $ dbh = new PDO($ dsn, $ user, $ password);*/

	    /* リクエストから得たスーパーグローバル変数をチェックするなどの処理 */

	    // データベースに接続
	    $dbh = new PDO(
	        'mysql:dbname=heroku_013fe25c9a51252;host=us-cdbr-east-02.cleardb.com;charset=utf8mb4',
	        'b2c2a3b6806e9a',
	        '5b669a13',
	        [//オプション
               PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
               PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
               PDO::MYSQL_ATTR_USE_BUFFERED_QUERY =>true,
	        ]
	    );
	    
	} catch (PDOException $e) {

	    // エラーが発生した場合は「500 Internal Server Error」でテキストとして表示して終了する
	    // - もし手抜きしたくない場合は普通にHTMLの表示を継続する
	    // - ここではエラー内容を表示しているが， 実際の商用環境ではログファイルに記録して， Webブラウザには出さないほうが望ましい
	    header('Content-Type: text/plain; charset=UTF-8', true, 500);
	    exit($e->getMessage()); 

	}
   return $dbh;
}
?>