for inserting in table 

INSERT INTO `Sassy3004`.`Products` (`pid`, `cid`, `name`, `price`, `qty`) VALUES (NULL, '2', 'Pachanga -Coral', '1799', '20');


CREATE TABLE `sassy3004`.`products` ( `pid` INT NOT NULL AUTO_INCREMENT , `cid` INT NOT NULL , `name` VARCHAR(100) NOT NULL , `price` INT NOT NULL DEFAULT '0' , `qty` INT NOT NULL DEFAULT '20' , PRIMARY KEY (`pid`)) ENGINE = InnoDB;
<?php
$cid = $_GET['cid'];
$query = 'SELECT * from products where cid='.$cid;
$c = mysql_connect('localhost','root','');
$db = mysql_select_db('sassy3004');

$r = mysql_query($query);
while($row = mysql_fetch_assoc($r))
{

?>


<?php
}
?>