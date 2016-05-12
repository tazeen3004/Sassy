<?php
require_once("header.php");
?>
<script>
  $(document).ready(function()
  {
    $("#update_form").hide();
  	$("#update_save_button").click(function()
    {
      $("#saved").hide();
      $("#update_form").show();
      $("#update_save_button").html('Update');
      $("#edit_save_button").click(function()
      {
        $("#update_form").submit();

      });
    });
 });
</script>
<div class="container1">
<div class="panel panel-default panel-danger">
<div class="panel-heading "> <strong>Manage Profile</strong> </div>
<div class="panel-body" id="profile">
  <button id="update_save_button" class="button1" >Edit</button>
  <br>
  <?php
				$uid =$_COOKIE['uid'];
        		function fetch_user($uid,$colm)
				{
				
				$query="SELECT $colm from users where uid='$uid'";
				$result=mysql_query($query);
				return mysql_result($result,0,$colm); 
				}
				$name=fetch_user($uid,"name");
				$email=fetch_user($uid,"email");
				$baddress=fetch_user($uid,"baddress");
				$saddress=fetch_user($uid,"saddress");
				$contactno=fetch_user($uid,"contactno");		
		?>
  <div id="saved">
    <div class="row">
      <div class="col-md-3">Name</div>
      <div class="controls col-lg-6" id="name"><?php echo $name;?> </div>
    </div>
    <br>
    <div class="row">
      <div class="col-md-3">E-mail</div>
      <div class="controls col-lg-6" id="email"><?php echo $email;?> </div>
    </div>
    <br>
    <div class="row">
      <div class="col-md-3">Billing Address</div>
      <div class="controls col-lg-6" id="baddress"><?php echo $baddress;?> </div>
    </div>
    <br>
    <div class="row">
      <div class="col-md-3">Shipping Address</div>
      <div class="controls col-lg-6" id="saddress"><?php echo $saddress;?> </div>
    </div>
    <br>
    <div class="row">
      <div class="col-md-3">Contact No.</div>
      <div class="controls col-lg-6" id="contactno"><?php echo $contactno;?> </div>
    </div>
  </div>
<form action="../../../Users/Tazeen/Downloads/update.php" method="POST" id="update_form">
<div class="row">
  <div class="col-md-3">Name</div>
  <div class="col-md-6" id="name"><?php echo "$name"; ?> </div>
</div>
<br>
<div class="row">
  <div class="col-md-3">E-mail</div>
  <div class="col-md-6" id="email">
    <input type="text" class="form-control" value=<?php echo "\"$email\""; ?> >
  </div>
</div>
<br>
<div class="row">
  <div class="col-md-3">Billing Address</div>
  <div class="col-md-6" id="baddress">
    <textarea class="form-control" rows="3" name="baddress"><?php echo $baddress; ?></textarea>
  </div>
</div>
<br>
<div class="row">
  <div class="col-md-3">Shipping Address</div>
  <div class="col-md-6" id="saddress">
    <textarea class="form-control" rows="3" name="saddress"><?php echo $saddress; ?></textarea>
  </div>
</div>
<br>
<div class="row">
  <div class="col-md-3">Contact No.</div>
  <div class="col-md-6" id="contactno">
    <input type="text" class="form-control" value=<?php echo "\"$contactno\""; ?>>
  </div>
</div>
</form>
</div>
</div>
</div>
</div>
<br>
<br>
skfvnmfkbg
</body>
</html>