<?php 
function exce_sp_menu($proc, $menu_id) {
    require_once('db_conn.php');
    $dbh = connection_db();
	//DB取得
	$stmt = $dbh->prepare("CALL sp_menu(?,?)");
    $stmt->bindParam(1, $proc, PDO::PARAM_INT);
    $stmt->bindParam(2, $menu_id);
	// ストアドプロシージャをコールします
	$stmt->execute();
	// Webブラウザにこれから表示するものがUTF-8で書かれたHTMLであることを伝える
	// (これか <meta charset="utf-8"> の最低限どちらか1つがあればいい． 両方あっても良い．)
	header('Content-Type: text/html; charset=utf-8');

    return $stmt;
}
?>