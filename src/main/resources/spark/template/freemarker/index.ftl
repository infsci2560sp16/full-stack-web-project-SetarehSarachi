 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${blogTitle}</title>
   <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400' rel='stylesheet' type='text/css'>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
   <script type="text/javascript">
  WebFontConfig = {
    google: { families: [ 'Open+Sans:300,400:latin' ] }
  };
  (function() {
    var wf = document.createElement('script');
    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
      '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
  })(); </script>
  
  <link rel="stylesheet" href="stylesheets/bootstrap.min.css">
  <link rel="stylesheet" href="stylesheets/MyCss.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>

<body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

<div class="container">
  <div class="jumbotron">
  <img class="img-responsive logo" src="image/FitBuddyLogo.png" width="85" height="345" alt="Logo Image" />
   <h1>${blogTitle}</h1>
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
        <li class="active"><a href="#">About Us</a></li>
        <li><a href="#">Fit Blog</a></li>
        <li><a href="Contact.html">Contact Us</a></li>
      </ul>

    </div>
  </div>
</nav>
  </div>
  
  <div class="row">
    <div class="col-xs-pull-11 content" style="background-image:linear-gradient(rgba(255, 255, 255, 0.8), rgba(255, 255, 255, 0.8)), url('image/main-back.jpg'); background-size: cover; background-attachment: fixed;">
      <h3>About Us</h3>
     
     ${message}

    </div>
  </div>
</div>
<div class="panel-footer">All Rights Reserved for Setareh :D #DoNotCopy</div>
</body>

</html> 