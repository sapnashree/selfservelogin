<?php
include "conn.php";
if(isset($_POST['submit'])){
  $username=$_POST['username'];
  $email=$_POST['email'];
  $sql_us = "SELECT * FROM login WHERE email='$email' AND client_name='$username'";
  $data_us=mysqli_query($connectDB,$sql_us);
  if (mysqli_num_rows($data_us) > 0) {
    $reg_st = true;
     echo"<h1 style='color:red;font-size:16px;position: relative;top: 160px;left: 119%;transform:translate(-50%);z-index:99'>Email is already Registered.</h1>";

  } else {
    $resultuser = mysqli_query($conn,$sql);
    $name=$_POST['name'];
    $phoneno=$_POST['phoneno'];
    $password=$_POST['password'];
    $confirm_password=$_POST['confirm_password'];
    $password2=password_hash($confirm_password, PASSWORD_DEFAULT);
    echo "<h1 style='color:red;font-size:18px;position:absolute;top:473px;left:996px;'>success.</h1>";
    $count=1;
    $abc=explode(",",$email);
    if ($password != $confirm_password) {
      echo "<h1 style='color:red;font-size:18px;position:absolute;top:73px;left:96px;'>Password and confirm password do not match.</h1>";
      header("location: reg_test.php");
    } else {
      for($f=0; $f<count($abc); $f++ ){
        ${"sql".$f}="INSERT INTO `login` (`client_name`,`name`,  `email`, `number`, `password` ) VALUES ('$username', '$name', '$abc[$f]', '$phoneno', '$password2')";
        ${"result".$f}=mysqli_query($connectDB,  ${"sql".$f});
      }
      header("location: login.php?registration=success");
      $to = $email ;
      $message = "Hello " . $username . ", <br> \r\n\r\n";
      $message .= "Your Mail ID-  "; 
      for($e=0; $e<count($abc); $e++ ){
        $message .=  $abc[$e] . " <br>  \r\n\r\n";
      }
      $message .= "Your Password Is-  " . $confirm_password . " <br><br> \r\n\r\n";
      $message .= "Link for the tool - https://publisherplex.io/selfserve/login.php <br><br> \r\n\r\n";
      $message .="Thanks & Regards <br>";
      $message .="Hockey Curve";
      $subject ="Registration of Client";
      $header = "From:bizops@hockeycurve.com\r\n";
      $header .= 'Bcc:bizops@hockeycurve.com'. "\r\n";
      $header .= "MIME-Version: 1.0\r\n";
      $header .= "Content-type: text/html\r\n";
      $retval = mail ($to,$subject,$message,$header);
    }
  }
}






?>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.1/TweenMax.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Registration Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
<style>
    label {

text-transform: uppercase;
}
     #box{
		width:100%;
        height:100%;
		position: absolute;
		left:0px;
		top:0px;
		user-select: none;
		cursor: pointer;
		overflow: hidden;
		 
		box-sizing: border-box;
	  box-shadow: 0px 3px 3px 1px #ddd;
	}
@font-face {
        font-family: 'bold';
        src: url('https://s.hcurvecdn.com/fonts/Montserrat_Bol.woff2?v=3') format("truetype");
    }
    @font-face {
        font-family: 'sbold';
        src: url('https://s.hcurvecdn.com/fonts/NunitoSans-Bold.woff2?v=3') format("truetype");
    }
form {
    /*border: 3px solid #f1f1f1;*/
    width: 28%;
    /* height: 40%; */
    /* float: right; */
    position: absolute;
    top: 20%;
    left: 66%;
    z-index: 1
}

input[type=text], input[type=password], input[type=email], input[type=number] {
    width: 100%;
  padding: 5px 4px;
  margin: 10px 0;
  display: inline-block;
border:none;
  box-shadow: 0 0 7px rgba(0, 0, 0, 0.4);
  box-sizing: border-box;
  border-radius: 5px;
}

.saps {
    background-image: linear-gradient(#0b61b5, #1277d3);
  color: white;
  padding: 8px 10px;
  margin: 0.8rem 0.3rem;
  border: none;
  cursor: pointer;
  font-weight:900;
  font-family:bold;
  width: 100%;
  font-size: 1.8rem;
  box-shadow: 1px 1px 4px rgb(0 0 0 / 40%);
  border-radius: 10px;
}
.saps2 {
    background-image: linear-gradient(#0b61b5, #1277d3);
  color: white;
  padding: 8px 12px;
  margin: 0.5rem 0.5rem;
  border: none;
  cursor: pointer;
  font-weight:900;
  font-family:bold;
  position:absolute;
  width: 100%;
  font-size: 1.8rem;
  box-shadow: 1px 1px 4px rgb(0 0 0 / 40%);
  border-radius: 10px;
  height:10%;
  left:0%;
}

.imgcontainer {
   z-index: 1;text-align:center;  font-family:bold;font-size:2em;position:absolute;top:10%;left:10%;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

/*.form_container {*/
/*  padding: 16px;*/
/*}*/

span.psw {
  float: right;
  padding-top: 5%;
  color:#d3d3d3;font-family:sbold;font-weight:900
}
#err{
    position:absolute;
    margin-left:10%;
    width:80%;
    top:;
    text-align:center;
}
.floating { 
    animation-name: floating;
    animation-duration: 3s;
    animation-iteration-count: infinite;
    animation-timing-function: ease-in-out;
    /* margin-left: 30px;
    margin-top: 5px; */
}
 
@keyframes floating {
    0% { transform: translate(0,  0px); }
    50%  { transform: translate(0, 15px); }
    100%   { transform: translate(0, -0px); }   
    
}

.floating2 { 
    animation-name: floating;
    animation-duration: 3s;
    animation-iteration-count: infinite;
    animation-timing-function: ease-in-out;
    animation-delay: 1s;
}
 
@keyframes floating2 {
    0% { transform: translate(0,  0px); }
    50%  { transform: translate(0, 25px); }
    100%   { transform: translate(0, -0px); }   
}

#dynamic{
    position: absolute;top: 10%;left: 0%;width: 54%;height: 14%;padding:1%;font-size: 4rem;
    color:white;text-align: center;font-family:bold; 
}
/* carousel */

.car_container{
        width: 50%;
		height: 100%;
		position: absolute;
		left:0%;
		top:0%;
		padding:0px 0px;
		z-index:1000;
}

.text{
margin-left: 2%;width: 100%;height: 14%;padding:1%;color:white;text-align: center;font-family:bold;
/*border:1px solid yellow;*/
font-size: 3rem;
}
.adi{
    position: relative;left: 30%;width: 40%;height: 30%;
    /*border:1px solid black;*/
}
.hhh{
    position:relative;margin-top:23%;left:0%;width:100%;height:100%;background-color:transparent;
    /*border:1px solid red;*/
}
.carousel-indicators li {
    width: 10px;
    height: 10px;
    border-radius: 100%;
}
.carousel-indicators {
    bottom: -35px;
}

/*to remove arrows in number input field*/
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
#bluebg {
    position:absolute;top:0px;left:0px;width:100%;z-index:-1
  }
.clouds{
    position:absolute;top:0px;left:50%;width:50%;z-index:1
}
input[type=text], input[type=password], input[type=email], input[type=number] {
  
 width: 90%;
  padding: 5px 4px;
  margin:1% 5% ;
  display: inline-block;
border:1px solid black;
  box-shadow: 0 0 7px rgba(0, 0, 0, 0.4);
  box-sizing: border-box;
  border-radius: 5px;
}
.white{
    display:none;
}
.hc-logo1{
    position:absolute;top:0px;left:0px;width:100%;z-index:1;
}
.hc-logo2{
    display:none;
}

.eye{
    position: absolute;top: 48%;font-size: 1rem;left: 88%;
}
@media only screen and (max-width: 600px) {
  #bluebg {
    position:absolute;top:0px;left:0px;height:100%;z-index:-1
  }
  .clouds{
    position:absolute;left:0px;top:20%;width:100%;transform:rotate(90deg);z-index:1
}
.imgcontainer {
   z-index: 1;text-align:center;  font-family:bold;font-size:2em;position:absolute;top:0;left:0;width:100%;
}

.white{
    background-color:white;
    height:300px;
    position:absolute;
    width:100%;
    bottom:0px;
    display:block;
}
.hc-logo1{
    display:none;
}
.hc-logo2{
    display:block;
    position:absolute;
    width:80%;
    top:5%;
    left:10%;
}
 .warning1{
     color:green;position:absolute;top:38%;font-size:20px;width:100%;float:right;left:0;text-align:center;z-index:10;
 }
 .warning-2{
     color: red;position: absolute;top:42%;text-align:center;margin-left: 0%;z-index:99;width: 100%;transform: translate(0%, 0%);
 }
form {
    /*border: 3px solid #f1f1f1;*/
    width: 100%;
    position: absolute;
    display:flex;
    align-items:center;
    
    flex-direction:column;
    left:0;
    top:33%;
}
.eye{
    position: absolute;top: 46%;font-size: 1rem;left: 88%;
}
#dynamic,.car_container{
    display:none;
}
.saps,.saps2 {
  color: white;
  padding: 8px 10px;
  margin: 0.8rem 28%;
  width: 50%;
}

@keyframes floating {
    0% { top:5%; transform: translate(0,  0px) rotate(90deg)}
    50%  {top:5%; transform: translate(15px, 0px) rotate(90deg); }
    100%   {top:5%; transform: translate(0, 0px) rotate(90deg); }   
    
}

@keyframes floating2 {
     0% {top:5%; transform: translate(0,  0px) rotate(90deg)}
    50%  {top:5%; transform: translate(25px, 0px) rotate(90deg); }
    100%   {top:5%; transform: translate(0, 0px) rotate(90deg); }  
}
}
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
     color:#d3d3d3;font-family:sbold;font-weight:900
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
<div id="box">

    <div>
        <img class="clouds" src="https://s.hcurvecdn.com/selfserve/module1/login/cloud.png"> 
        <img  class="floating clouds" src="https://s.hcurvecdn.com/selfserve/module1/login/cloud2.png"> 
        <img class="floating2 clouds" src="https://s.hcurvecdn.com/selfserve/module1/login/cloud3.png"> 
        <img id="bluebg" src="https://s.hcurvecdn.com/selfserve/module1/login/bg2.jpg"> 
        <div class="white"></div>
        <img class="hc-logo1" src="https://s.hcurvecdn.com/selfserve/module1/login/logo.png"> 
        <img class="hc-logo2" src="https://s.hcurvecdn.com/atest/pooja/updateanimation/logo3.png"> 
    
    </div>
 
    <form name="registerForm" method="post" >

 <span id="err" style="color:red;"></span><br>
        <span id="err4" style="color:red;"></span><br>
      <span id="err3" style="color:red;"></span><br>
      <span id="err2" style="color:red;"></span><br>
          <div id="error-message"  style="color:red;"></div>
              <div id="error-message2"  style="color:red;"></div>
               <div class="imgcontainer"> Create Your Account </div><br>
  <div class="form_container"  style="z-index: 1;">
    <label for="UserName">Client-Name <span style="color:red">*</span></label>
    <input type="text" id="username" name="username" class="in" placeholder="Enter Client Name"  required>
    <span id = "usernameloading" style="color:red"> </span>
     <span id = "usernameresult" style="color:red"> </span>
    <label for="Name">Name <span style="color:red">*</span></label>   
    <input type="text" id="name" name="name" placeholder="Enter Name" required oninput="nam()"/>

    <label for="e-mail">E-mail address <span style="color:red">*</span></label>
    <input type="email" id="e-mail" name="email" placeholder="Enter Email-Id" required  oninput="checker()" multiple/>
    <label for="phoneNumber">Phone Number <span style="color:red">*</span></label>
<input type="number" id="number" name="phoneno" pattern="^(?!(\d)\1{9})(?!1111111111|2222222222|3333333333|4444444444|5555555555|6666666666|7777777777|8888888888|9999999999|0000000000)\d{10}$" oninput="validatePhoneNumber()" required placeholder="Enter Phone No." required/>
  <input type="password" id="password" name="password" placeholder="Password" required minlength="8" title="8 characters minimum">
  <span style="position: absolute;top: 68%;font-size: 1rem;left:85%;" onclick="showpass()"><i style="font-size:20px" class="fa fa-eye"></i></span>
  <input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm Password" required>
  <span style="position: absolute;top: 78%;font-size: 1rem;left:85%;" onclick="showpass2()"><i style="font-size:20px" class="fa fa-eye"></i></span>

    <button type="submit" name="submit" class="saps button" onclick="pass()">Sign Up</button>
    <span style=" font-size: 1rem;top: 95%;width: 100%;"> Already have an account? <a href="login.php" style="text-align:right;font-size: 1.1rem;text-decoration: none;color:#2e60a7;font-family:bold;font-weight:900">Login</a></span>
    <span class="saps2"><a href="login.php" style="color:white;left:4%;width:90%;text-align:center;position:absolute;top: 27%;">Login</a></span>
  </div>
</form>


    <div id="dynamic" style="text-align:center">DYNAMIC AD SERVING</div>
   <div class="car_container">
    
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-wrap="false"  data-interval="3000">
      <ol class="carousel-indicators">
        <li data-target="#slider" data-slide-to="0" class="active"></li>
        <li data-target="#slider" data-slide-to="1"></li>
        <li data-target="#slider" data-slide-to="2"></li>
        <li data-target="#slider" data-slide-to="3"></li>
        <li data-target="#slider" data-slide-to="4"></li>
         <li data-target="#slider" data-slide-to="5"></li>

    </ol>  
    <div class="carousel-inner">
        <div class="item active">
            <div class="hhh">
                <img id="img1" class="adi" src="https://s.hcurvecdn.com/selfserve/module1/signup/sliders/x.gif">
              <br>  <div class="text" >On Demand Access to Strategic Domain Experts for Programmatic Setup</div>
            </div>
        </div>
        <div class="item">
            <div class="hhh">
                <img id="img2" class="adi" src="https://s.hcurvecdn.com/selfserve/module1/signup/sliders/y.gif">
                <div class="text" >Brands use this to create & show data based relevant ads        </div>
            </div>
        </div>
        <div class="item">
            <div class="hhh">
                <img id="img3" class="adi" src="https://s.hcurvecdn.com/selfserve/module1/signup/sliders/z.gif">
                <div class="text" >Every user is unique, hence every ad for every users should be unique.        </div>
            </div>
        </div>
        <div class="item">
            <div class="hhh">
                <img id="img4" class="adi"  src="https://s.hcurvecdn.com/selfserve/module1/signup/sliders/a.gif">
                <div class="text" >We provide real time campaign performance dashboards, a/b testing environments        </div>
            </div>
        </div>
        <div class="item">
            <div class="hhh">
                <img id="img5" class="adi"  src="https://s.hcurvecdn.com/selfserve/module1/signup/sliders/b.gif">
                <div class="text" >Media Buying Automation for Bringing Speed, Scale & Driving Performance        </div>
            </div>
        </div>
        <div class="item">
            <div class="hhh">
                <img id="img6" class="adi"  src="https://s.hcurvecdn.com/selfserve/module1/signup/sliders/c.gif">
                <div class="text" >Generate User product feed based on his online and offline activity        </div>
            </div>
        </div>
 

  </button>
   
        
        
    </div>
    </div>

</div>
</div>
</body>
<script>
    function pass() {
  var password = document.getElementById("password").value;
  var confirmPassword = document.getElementById("confirm_password").value;
   const errormsg = 'Passwords do not match!';
 
  if (password != confirmPassword) {
    // alert("Passwords do not match!");
    // return false;
       document.getElementById('error-message2').textContent = errormsg;
 
  }
}
</script>
<script>
    var username = document.getElementById("username");
     username.addEventListener("keyup",(e)=>{
        if(e.target.value.includes(' ')){
            document.getElementById("err").innerText = "Client cannot have space";
            document.querySelector(".button").disabled =true;
        } else if(e.target.value.length < 3){
            document.getElementById("err").innerText = "Client name must have minimum 3 letters";
            document.querySelector(".button").disabled =true;
        } else if(e.target.value.length > 16){
            document.getElementById("err").innerText = "Client name must have maximum 16 letters";
            document.querySelector(".button").disabled =true;
        } else{
            document.getElementById("err").innerText = "";
            var vl1 = document.getElementById("err").innerText;
    var vl2 = document.getElementById("err2").innerText;
    var vl3 = document.getElementById("err3").innerText;
    var vl4 = document.getElementById("err3").innerText;
    if (vl1 == "" && vl2 == "" && vl3 == "" && vl4 == ""){
  document.querySelector(".button").disabled =false;
} 
        }
        
    });
    
    var phnm = document.getElementById("number");
    phnm.addEventListener("keyup",(e)=>{
        if(e.target.value.includes(' ')){
            document.getElementById("err2").innerText = "Number cannot have space";
            document.querySelector(".button").disabled =true;
        } else if(e.target.value.length < 10){
            document.getElementById("err2").innerText = "Enter a valid phone number";
            document.querySelector(".button").disabled =true;
        } else if(e.target.value.length > 10){
            document.getElementById("err2").innerText = "Enter a valid phone number";
            document.querySelector(".button").disabled =true;
        } else{
            document.getElementById("err2").innerText = "";
            var vl1 = document.getElementById("err").innerText;
    var vl2 = document.getElementById("err2").innerText;
    var vl3 = document.getElementById("err3").innerText;
    var vl4 = document.getElementById("err3").innerText;
    if (vl1 == "" && vl2 == "" && vl3 == "" && vl4 == ""){
  document.querySelector(".button").disabled =false;
} 
        }
         
    });
    

  var hulk = document.getElementById("e-mail").value;

    //  console.log(hulk);
    let emailId = document.getElementById("e-mail");
    let mailRegex = /^[a-zA-Z][a-zA-Z0-9\-\_\.]+@[a-zA-Z0-9]{2,}\.[a-zA-Z0-9]{2,}$/;
    // multipple email
//  function checker() {
//     var emailInput = document.getElementById("emailId").value;
//     var emailList = emailInput.split(",").map(function (email) {
//          console.log(emailList);
//         return email.trim();
//     });
//     var mailRegex = /^([a-zA-Z0-9_.-]+)@([a-zA-Z0-9_-]+)\.([a-zA-Z]{2,5})$/;

//     for (var i = 0; i < emailList.length; i++) {
//         if (!emailList[i].match(mailRegex)) {
//             document.getElementById("err3").innerText = "Email Id entered is not Valid!";
//             document.querySelector(".button").disabled = true;
//             return;
//         }
//     }

//     document.getElementById("err3").innerText = "";
//     var vl1 = document.getElementById("err").innerText;
//     var vl2 = document.getElementById("err2").innerText;
//     var vl3 = document.getElementById("err3").innerText;
//     var vl4 = document.getElementById("err3").innerText;
//     if (vl1 == "" && vl2 == "" && vl3 == "" && vl4 == "") {
//         document.querySelector(".button").disabled = false;
//     }
// }
   
// single email
function checker(){
    
    if(emailId.value.match(mailRegex)){
        
        document.getElementById("err3").innerText = "";
        var vl1 = document.getElementById("err").innerText;
    var vl2 = document.getElementById("err2").innerText;
    var vl3 = document.getElementById("err3").innerText;
    var vl4 = document.getElementById("err3").innerText;
    if (vl1 == "" && vl2 == "" && vl3 == "" && vl4 == ""){
  document.querySelector(".button").disabled =false;
} 
    }
    
    else{
        document.getElementById("err3").innerText = "Email Id entered is not Valid!";
            document.querySelector(".button").disabled =true;
    }

}


 
  
function nam (){
     var str=document.getElementById("name").value;
    if(str[0].toUpperCase() != str[0])
    {
        document.getElementById("err4").innerText = "First letter of name must be in uppercase";
        document.querySelector(".button").disabled =true;
    return false;
    } else{
            document.getElementById("err4").innerText = "";
            var vl1 = document.getElementById("err").innerText;
    var vl2 = document.getElementById("err2").innerText;
    var vl3 = document.getElementById("err3").innerText;
    var vl4 = document.getElementById("err3").innerText;
    if (vl1 == "" && vl2 == "" && vl3 == "" && vl4 == ""){
  document.querySelector(".button").disabled =false;
} 
        }
}

</script>
<script>
    if(window.history.replaceState){
        window.history.replaceState( null,null, window.location.href)
    }
</script>
<script>
// function validatePhoneNumber2() {
//   const phoneNumber = document.getElementById('number').value;
//   const invalidNumbers = ['1111111111', '2222222222', '3333333333', '4444444444', '5555555555', '6666666666', '7777777777', '8888888888', '9999999999' , '0000000000'];
//   const errorMessage = 'Enter a valid phone number';

//   if (invalidNumbers.includes(phoneNumber)) {
//     document.getElementById('number').setCustomValidity(errorMessage);
//     document.getElementById('error-message').textContent = errorMessage;
//      document.getElementById('err2').style.display="none";
//   } else {
//     document.getElementById('number').setCustomValidity('');
//     document.getElementById('error-message').textContent = '';
//   }
// }
function validatePhoneNumber() {
  const phoneNumber = document.getElementById('number').value;
  const errorMessage = 'Enter a valid phone number';

  if (!phoneNumber.match(/^(?!(\d)\1{9})(?!1111111111|2222222222|3333333333|4444444444|5555555555|6666666666|7777777777|8888888888|9999999999|0000000000)\d{10}$/)) {
    document.getElementById('number').setCustomValidity(errorMessage);
    document.getElementById('error-message').textContent = errorMessage;
    document.getElementById('err2').style.display="none";
  } else {
    document.getElementById('number').setCustomValidity('');
    document.getElementById('error-message').textContent = '';
  }
}


function showpass(){
        if(document.getElementById("password").type=="password"){
        document.getElementById("password").type="text";
        }
        else if(document.getElementById("password").type=="text"){
            document.getElementById("password").type="password";
        }
    }
        if(window.history.replaceState){
            window.history.replaceState( null,null, window.location.href)
        }
        
function showpass2(){
        if(document.getElementById("confirm_password").type=="password"){
        document.getElementById("confirm_password").type="text";
        }
        else if(document.getElementById("confirm_password").type=="text"){
            document.getElementById("confirm_password").type="password";
        }
    }
        if(window.history.replaceState){
            window.history.replaceState( null,null, window.location.href)
        }

</script>

</html>
