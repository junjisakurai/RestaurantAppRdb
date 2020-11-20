<!-- 注文内容確認画面  -->
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Progate</title>
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
  <link href='https://fonts.googleapis.com/css?family=Pacifico|Lato' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="order-wrapper">
  <div class="order-wrapper">
    <h2>注文内容確認</h2>
    <?php $name = $_POST['name'];
          $quantity = $_POST['quantity'];
          $price = $_POST['price'];
          $totalPayment = 0;
          $totalOrderCount = 0;
    ?>
    <?php //var_dump($_POST); ?>
    
    <?php for($i = 0; $i < count($name); $i++): ?>
      <?php $orderCount = $quantity[$i];
            $totalPrice = $price[$i] * $quantity[$i]; ?>
      
      <!-- 注文個数0は表示しない  -->
      <?php if($orderCount == 0) continue; ?>
      
      <?php $totalPayment += $totalPrice;
            $totalOrderCount += $orderCount;
       ?>
      <p class="order-amount">
        <?php echo $name[$i] ?>
        x
        <?php echo $orderCount ?>
        個
      </p>
      <p class="order-price"><?php echo $totalPrice ?>円</p>
      
      
    <?php endfor ?>
    
      <!-- 注文個数0なら、メッセージを表示して戻る  -->
      <?php if($totalOrderCount == 0) {
      	echo '<script type="text/javascript">alert("注文個数0。");</script>';
      }?>
     <!--  header("Location: index.php");  -->
    
    <h3>合計金額: <?php echo $totalPayment ?>円</h3>
  </div>
  <a href="index.php" >← メニュー一覧へ戻る</a>
</body>
</html>