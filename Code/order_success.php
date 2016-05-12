<?php
require_once("header.php");
if(isset($_GET['pid']) && isset($_GET['qty']))
{	
	$pid=$_GET['pid'];
	$qty=$_GET['qty'];
	$query = "SELECT qty from products where pid='$pid'";
	$result = mysql_query($query);
	$quantity=mysql_result($result,0,"qty");
	$sub=$quantity-$qty;
	$query1="UPDATE products SET qty='$sub' WHERE pid=$pid";
	$result1=mysql_query($query1);

}
elseif(isset($_COOKIE['cart']) && isset($_COOKIE['total']))
{
	$cart =$_COOKIE['cart'];
	foreach($cart as $pid=>$qty)
	{
		
		$query = 'SELECT qty from products where pid='.$pid;
		$result = mysql_query($query);
		$quantity=mysql_result($result,0,"qty");
		
		$sub=$quantity-$qty;
		$query1="UPDATE products SET qty='$sub' WHERE pid=$pid";
		echo $query1;
		$result1=mysql_query($query1);
	}


}
?>
<div class="container">
	<div class="panel panel-default panel-danger">
	<div class="panel-heading "> <strong>Checkout</strong> </div>
		<div class="panel-body">
			<p>Order Confirmed!</p>
			<p>You will receive your order within 15 days!</p>
			<p>Thank you for shopping with us...</p>
		</div>
	</div>
</div>
<br>
<br>
<?php
require_once("footer.php");
?>