<!-- レビュー表示画面  -->
<?php
$menu_id = $_GET['menu_id'];
include('call_sp_menu.php');
$rows = exce_sp_menu(2, $menu_id);
$row = $rows->fetch(PDO::FETCH_ASSOC);

include('call_sp_review.php');
$reviews = exce_sp_review(1, $row['menu_id']);
//dtはforeachすると配列がなくなるので取り直し
$reviews2 = exce_sp_review(1, $row['menu_id']);
include('chartData.php');
$chartData = getChartData($reviews2);
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Progate</title>
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
  <link href='https://fonts.googleapis.com/css?family=Pacifico|Lato' rel='stylesheet' type='text/css'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
  <div class="review-wrapper">
    <div class="review-menu-item">
      <img src="<?php echo $row['menu_img_url'] ?>" class="review-menu-item-image">
      <!-- 【メニュー名】  -->
      <h3 class="menu-item-name" 
      average=<?php echo $chartData["average"] ?> 
      totalCount=<?php echo $chartData["totalCount"] ?> 
      fiveCount=<?php echo $chartData["fiveCount"] ?> 
      foreCount=<?php echo $chartData["foreCount"] ?> 
      threeCount=<?php echo $chartData["threeCount"] ?> 
      twoCount=<?php echo $chartData["twoCount"] ?> 
      oneCount=<?php echo $chartData["oneCount"] ?>><?php echo $row['menu_name'] ?></h3>
  
      <?php if ($row['menu_kbn'] == '1'  ): ?>
        <p class="menu-item-type"><?php echo $row['hot_ice_m'] ?></p>
          <!-- アルコールクラスはアルコール表示  -->
          <?php if ($row['drink_kbn'] == '2' ): ?>
          	<p class="menu-item-alcohol">/アルコール <?php echo $row['alcol'] ?> %</p>
          <?php endif ?>
      <?php else: ?>
        <?php for ($i = 0; $i < $row['spicy']; $i++): ?>
          <img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/chilli.png" class='icon-spiciness'>
        <?php endfor ?>
      <?php endif ?>
      <p class="price">¥<?php echo floor($row['price'] * 1.08) ?></p>
    </div>
    
    <div class="review-list-wrapper">
      <div class="review-list">
       <p>
       <!--グラフ描画-->
         <canvas id="ex_chart" height="50" width="150"></canvas>
       </p>
      
        <div class="review-list-title">
          <img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/review.png" class='icon-review'>
          <h4>レビュー一覧</h4>
        </div>
        <?php foreach ($reviews as $review): ?>
          <div class="review-list-item">
            <div class="review-user">
              <?php if ($review['sex'] == '1'): ?>
                <img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/male.png" class='icon-user'>
              <?php else: ?>
                <img src="https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/female.png" class='icon-user'>
              <?php endif ?>
              <p><?php echo $review['user_name'] ?></p>
            </div>
            <p class="review-text"><?php echo $review['review'] ?></p>
          </div>
        <?php endforeach ?>
      </div>
    </div>
    <a href="index.php">← メニュー一覧へ</a>
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
  <script src="Chart.js"></script>
</body>
</html>
