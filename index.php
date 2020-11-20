<!-- トップ画面  -->
<?php 
include('call_sp_menu.php');
$rows = exce_sp_menu(1, null);
?>
<script type="text/javascript">
<!-- 注文ボタン押下時のチェック  -->
 function check(){
   var check =  false;
   <!-- 注文総数0なら、確認画面に遷移しない  -->
   <!--   <input type=…の個数取得 idで取ってる？  -->
   Array.from(document.getElementsByClassName('quantity')).forEach( function( item ) {
     if( Number(item.value) > 0){
         check =  true;
     }
   });
   if(!check) alert("注文個数が入力されていません");
   return check;
 }
</script>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Café Progate</title>
  <!-- href="stylesheet.css"だと変更したスタイルシートの内容が反映されない  -->
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
  <link href='https://fonts.googleapis.com/css?family=Pacifico|Lato' rel='stylesheet' type='text/css'>
</head>
<body>
  <div class="menu-wrapper container">
  	<!-- ロゴタイトル  -->
    <h1 class="logo">Café Progate</h1>
    <h3>メニュー<?php echo $rows->rowCount() ?>品</h3>
    <form method="post" action="confirm.php" onsubmit="return check()">
      <div class="menu-items">
        <?php foreach ($rows as $row): ?>
          <!-- menu-itemクラスをshow.phpと共通してるので、切出したい  -->
          <div class="menu-item">
            <!-- メニュー画像表示  -->
            <img src="<?php echo $row['menu_img_url'] ?>" class="menu-item-image">
            <h3 class="menu-item-name">
              <!-- メニュー名押下でレビュー画面に遷移 =で変数渡し  -->
              <a href="show.php?menu_id=<?php echo $row['menu_id'] ?>">
              	<!-- メニュー名表示  -->
                <?php echo $row['menu_name'] ?>
              </a>
            </h3>
            <!-- instanceof クラス判定  -->
            <?php if ($row['menu_kbn'] == '1'  ): ?>
              <!-- ドリンククラスは温冷表示  -->
              <p class="menu-item-type"><?php echo $row['hot_ice_m'] ?></p>
              <!-- アルコールクラスはアルコール表示  -->
              <?php if ($row['drink_kbn'] == '2' ): ?>
              	<p class="menu-item-alcohol">/アルコール <?php echo $row['alcol'] ?> %</p>
              <?php endif ?>
            <?php else: ?>
              <!-- フードクラスは辛さ表示  -->
              <?php for ($i=0; $i<$row['spicy']; $i++): ?>
                <img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/chilli.png" class='icon-spiciness'>
              <?php endfor ?>
            <?php endif ?>
            <!-- 税込価格で値段表示  -->
            <p class="price" name="aa12aa12" >¥<?php echo floor($row['price'] * 1.08) ?>（税込）</p>
            <!-- 個数入力 inputはformに掛かってる   -->
            <input type="text" class="quantity" value="0" name="quantity[]">
            <input type="hidden" class="price" value=<?php echo floor($row['price'] * 1.08) ?> name="price[]">
            <input type="hidden" class="name" value="<?php echo $row['menu_name'] ?>" name="name[]">
            <span>個</span>
          </div>
        <?php endforeach ?>
      </div>
  <!--固定ボタン-->
  <a href="#top" class="topBtn" id="topBtn">TOP</a><!--/固定ボタン-->
      <footer>
      <input id="order" type="submit" value="注文する">
      </footer>
    </form>

  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="index.js"></script>
</body>
</html>