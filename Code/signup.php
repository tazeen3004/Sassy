<?php
require_once("header.php");
?>

<br>
<?php
  $msg = "";
  if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['password']) && isset($_POST['password_again']) 
  && isset($_POST['baddress']) && isset($_POST['saddress']) && isset($_POST['contactno']))
  {
	  
  $name = $_POST['name'];
  $email = $_POST['email'];
  $password = md5($_POST['password']);
  $password_again = md5($_POST['password_again']);
  $baddress=$_POST['baddress'];
  $pwd=$_POST['password'];
  $saddress = $_POST['saddress'];
  $contactno = $_POST['contactno'];

 
	  if (!empty($name)  && !empty($email) && !empty($password) && !empty($password_again) && !empty($baddress) 
	  &&!empty($saddress)&& !empty($contactno)) 
	  {
		   

			if($password != $password_again)
			{
				$msg =  "Passwords do not match!!";
			}
			else
			{
				if(strlen($pwd) < 8)
				{
		  			$msg =  "Password too short..";
					}
				else
				{
				    $query="select email from users where email = '$email'";
					$result = mysql_query($query);
					if(mysql_num_rows($result)>=1)
					{
				  		$msg =  "Email address already exists..";}
					else
					{
						if(empty($baddress))
					  	{
					  		$msg = "Enter Billing Address..";
						
						}
						else
						{
							if(empty($saddress))
						  	{
								$msg="Enter Shipping Address..";
						  	}
							else
							{
								if(empty($contactno))
							  	{
								  $msg="Enter Contact NO..";
							  
								}
									else{
										
       										$query = "INSERT into users (name,email,password,baddress,saddress,contactno) values 											                                            (\"$name\",\"$email\",\"$password\",\"$baddress\",\"$saddress\",\"$contactno\")";	
	   										$result = mysql_query($query);
										} 
							}
							 exit("<script>location.href = 'signup_success.php'</script>");
						}
					}
				}	
			}
		}
	}
?>

<div class="container">
	<div class="panel panel-default panel-danger">
		<div class="panel-heading ">
    		<strong>Sign Up</strong>
  		</div>
  		<div class="panel-body">
    	 <form class="form-horizontal" action="signup.php" method="POST">
  <fieldset>
  

    <div class="row">
      <label class="col-lg-3"  for="name">Name</label>
      <div class="controls col-lg-6">
        <input type="text" class="form-control" name="name" value=<?php if(isset($name))echo "\"$name\""; ?> >
      </div>
    </div>
    <br>
      <div class="row">
      <label class="col-lg-3" for="email">E-mail</label>
      <div class="controls col-lg-6">
        <input type="email" class="form-control" name="email" value=<?php if(isset($email))echo "\"$email\""; ?> >
      </div>
    </div>
    <br>
   	  <div class="row">
      <label class="col-lg-3" for="password">Password</label>
      <div class="controls col-lg-6">
      	 <input type="password" class="form-control" name="password">
        <p class="help-block">Password should be at least 8 characters</p>
      </div>
    </div>
    <br>
    <div class="row">
      <label class="col-lg-3"  for="password_confirm">Password (Confirm)</label>
      <div class="controls col-lg-6">
         <input type="password" class="form-control" name="password_again">
      </div>
    </div>
    <br>
  
      <div class="row">
      <label class="col-lg-3" for="baddres">Billing Address</label>
      <div class="controls col-lg-6">
        <textarea class="form-control" rows="3"  name="baddress" value=<?php if(isset($baddress))echo
		 "\"$baddress\""; ?> >
      </textarea>
      </div>
    </div>
    <br>
	  <div class="row">
      <label class="col-lg-3" for="saddres">Shipping Address</label>
      <div class="controls col-lg-6">
        <textarea  class="form-control" rows="3" name="saddress" value=<?php if(isset($saddress))echo "\"$saddress\""; ?> >
      </textarea>
      </div>
    </div>
   	<br>
 	<div class="row">
      <label class="col-lg-3" for="contactno">Contact No.</label>
      <div class="controls col-lg-6">
        <input type="contactno" class="form-control" name="contactno" value=<?php if(isset($contactno))echo 
		"\"$contactno\""; ?> >
    </div>
    <br>
    <br>
    <br>
    <div class="row">
      <div class="reg">
         <input type="submit" class="button1" value="Submit" /><?php echo "    ".$msg;?> 
    </div>
    
</div>
</div>
</div>
</fieldset>
</form>
</div>

<br>
<br>
<?php
require_once("footer.php");

?>