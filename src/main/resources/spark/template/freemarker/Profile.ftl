 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
  <link rel="stylesheet" href="stylesheets/bootstrap.min.css">
  <link rel="stylesheet" href="stylesheets/MyCss.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
</head>

<body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="js/SignUp.js">
</script>
<div class="container">
  <div class="jumbotron">
  <img class="img-responsive logo" src="image/FitBuddyLogo.png" width="85" height="345" alt="Profile Image"/>
    <h1>Fit Buddy</h1>
    <p>Monitor and Control your Activity and Food </p>
    <a href="Profile.html"><div class="col-sm-2-header MyProfile">My Profile</div></a> 
    <a href="login.html"><div class="col-sm-2-header login scaleB">Log In</div></a>
    <a href="SignUp.html"><div class="col-sm-2-header signup spinR">Sign up</div></a>
  </div>
  <div id="top-menu">
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index.html">About Us</a></li>
        <li><a href="#">Fit Blog</a></li>
        <li><a href="Contact.html">Contact Us</a></li>
      </ul>

    </div>
  </div>
</nav>
  </div>
  
  <div class="row">
    <div class="col-xs-pull-11 content">
    <div id="general-info">
    <img src="image/seth.jpg" class="img-circle" alt="ProfilePic" width="230" height="230"> 
    
      <h3>${username}</h3>
      <a class="editPLink" href="Edit.html"> Edit Profile </a>

    <#if weight??>
      <p> Current Weight: You haven't enter your weight!</p>
    <#else>
      <p> Current Weight: ${weight}</p>
    </#if>
     </div> 
     <div class="input-data">
      <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Food</a></li>
    <li><a data-toggle="tab" href="#menu1">Excercise</a></li>
    <li><a data-toggle="tab" href="#menu2">Sleep</a></li>
    <li><a data-toggle="tab" href="#menu3">Weight</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active"><br>
        <p> Add your daily meals : </p>
        <input type="text" id="food" placeholder="e.g. 2 slices of pizza">
        <input type='button' onclick='addFood()' value='Add Meal'/><br>
       <br><ol id="foodlist">
        </ol> 
    </div>

    <div id="menu1" class="tab-pane fade"><br>
        <p> Add your daily excercise : </p>
        <input type="text" id="activity" placeholder="e.g. Les Mills BodyAttack">
        <input type='button' onclick='addActivity()' value='Add Excercise'/><br>
       <br><ol id="activitylist">
        </ol>
        
              
    </div>
    <div id="menu2" class="tab-pane fade"><br>
        <p> How many hours have you slept today ? </p>
        <input type="text" id="sleep" placeholder="e.g. 7 hrs 25 mins">
        <input type='button' onclick='addSleep()' value='Add Sleep'/><br>
       <br><ul id="sleeplist">
        </ul>   

         </div>
    <div id="menu3" class="tab-pane fade"><br>
        <p> Log your current weight : </p>
        <input type='text' id='weight' placeholder="e.g. 124 Ibs." />
        <input type='button' onclick='addWeight()' value='Log Weight'/><br>
        <br><p>Today's Weight : <span id='newWeight'></span> </p></div>
  </div>
</div>

    </div>
  </div>
</div>
<div class="panel-footer">All Rights Reserved for Setareh :D #DoNotCopy</div>
</body>

</html> 