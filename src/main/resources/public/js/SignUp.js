$.ajaxSetup({
    contentType: "application/json; charset=utf-8",
    dataType: "json"
});
//Login form validation
function validateLoginFormOnSubmit(){
    document.getElementById("err_username").innerHTML ="";
    document.getElementById("err_password").innerHTML ="";

        if (document.LoginForm.username.value === "") {
            document.getElementById("err_username").innerHTML =
                "You must enter a username.";
            return false;
        }
        if (document.LoginForm.pwd.value === "") {
            document.getElementById("err_password").innerHTML =
                "You must enter a password.";
            return false;
        }
        return true;

}
//Sign up form validation
function validateSignUpFormOnSubmit() {

    // $.get('/hello', function( data) {
    //     alert(document.signUpForm.username.value);
    // });
    document.getElementById("err_username").innerHTML ="";
    document.getElementById("err_email").innerHTML ="";
    document.getElementById("err_password").innerHTML ="";
    document.getElementById("err_confirmPassword").innerHTML ="";
    document.getElementById("err_firstname").innerHTML ="";
    document.getElementById("err_lastname").innerHTML ="";

        //username validation
       var usernameillegalChars = /\W/;
        if (document.signUpForm.username.value === "") {
            document.getElementById("err_username").innerHTML =
                "You must enter a username.";
            return false;
        } else if ((document.signUpForm.username.value.length < 5) || (document
            .signUpForm.username.value.length > 15)) {
            document.getElementById("err_username").innerHTML =
                "The username must be between 5-15 characters.";
            return false;
        } else if (usernameillegalChars.test(document.signUpForm.username.value)) {
            document.getElementById("err_username").innerHTML =
                "The username contains illegal characters.";
            return false;
        }
        //email validation   
        var emailillegalChars = /[\(\)<\>\,\;\:\\\"\[\]]/;
        if (document.signUpForm.emailId.value === "") {
            document.getElementById("err_email").innerHTML =
                "You must enter your email.";
            return false;
        } else if (document.signUpForm.emailId.value.match(emailillegalChars)) {
            document.getElementById("err_email").innerHTML =
                "The email address contains illegal characters.";
            return false;
        } 
        //password validation
        var passwordillegalChars = /[\W_]/; // allow only letters and numbers
        if (document.signUpForm.pwd.value === "") {
            document.getElementById("err_password").innerHTML =
                "You must enter a password.";
            return false;
        } else if ((document.signUpForm.pwd.value.length < 7) || (document.signUpForm
            .pwd.value.length > 15)) {
            document.getElementById("err_password").innerHTML =
                "The password must be between 7-15 characters.";
            return false;
        } else if (passwordillegalChars.test(document.signUpForm.pwd.value)) {
            document.getElementById("err_password").innerHTML =
                "The password contains illegal characters.";
            return false;
        } else if (!((document.signUpForm.pwd.value.search(/(a-z)+/)) && (
            document.signUpForm.pwd.value.search(/(0-9)+/)))) {
            document.getElementById("err_password").innerHTML =
                "The password must contain at least one numeral.";
            return false;
        } 
        //confirm password validation
        if (document.signUpForm.confirmpwd.value === "") {
            document.getElementById("err_confirmPassword").innerHTML =
                "You must confirm your password.";
            return false;
        } else if (document.signUpForm.confirmpwd.value != document.signUpForm.pwd
            .value) {
            document.getElementById("err_confirmPassword").innerHTML =
                "The passwords should match.";
            return false;
        } 
        //first name validation
        if (document.signUpForm.firstname.value === "") {
            document.getElementById("err_firstname").innerHTML =
                "You must enter your first name.";
            return false;
        } 
        //last name validation
        if (document.signUpForm.lastname.value === "") {
            document.getElementById("err_lastname").innerHTML =
                "You must enter your last name.";
            return false;
        } 
        
        return true;

        // var obj = $('#signUpForm').serializeJSON();
        // var send = JSON.stringify(obj);
        // console.log(send);

        // $.ajax({
        //     url: 'https://guarded-inlet-8556.herokuapp.com/registration',
        //     type: "POST",
        //     datatype: "json",
        //     data: send,
        //     error: function(xhr, error) {
        //            alert('Error!  Status = ' + xhr.status + ' Message = ' + error);
        //     },
        //     success: function(data) {
        //             alert("User added successfully.");
        //             window.location.href='/inventory-list.html';

        //     }
        // });//end AJAX 

    }
    //Profile- Add Food to the Profile 

function addFood() {
        var food = document.getElementById('food').value;
        var node = document.createElement("LI");
        var textnode = document.createTextNode(food);
        node.appendChild(textnode);
        document.getElementById("foodlist").appendChild(node);
        document.getElementById("food").value = "";
    }
    //Profile - Add activity to the profile

function addActivity() {
        var activity = document.getElementById('activity').value;
        var node = document.createElement("LI");
        var textnode = document.createTextNode(activity);
        node.appendChild(textnode);
        document.getElementById("activitylist").appendChild(node);
        document.getElementById("activity").value = "";
    }
    //Profile - Add sleep hours to the profile

function addSleep() {
        var sleep = document.getElementById('sleep').value;
        var node = document.createElement("LI");
        var textnode = document.createTextNode(sleep);
        node.appendChild(textnode);
        document.getElementById("sleeplist").appendChild(node);
        document.getElementById("sleep").value = "";
    }
    //Profile - Update Weight

function addWeight() {
    var formInput = document.getElementById('weight').value;
    document.getElementById('newWeight').innerHTML = formInput;
    document.getElementById("weight").value = "";
}

    //Contact us - Google Map
    function initialize()
{
  var mapProp = {
    center: new google.maps.LatLng(40.4428285,-79.9561175),
    zoom:9,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
}

function afsoon(){
    alert("SALAM");
}

google.maps.event.addDomListener(window, 'load', initialize);

//Logic Tier

function ajaxCallAcceptJSONviaGet() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
        document.getElementById("foodLogList").innerHTML = xhttp.responseText;
        }
    };
    xhttp.open("GET", "loggedFoods", true);
    xhttp.send();
    }
    
    function ajaxCallAcceptJSONviaPost() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
        document.getElementById("excerciseList").innerHTML = xhttp.responseText;
        }
    };
    xhttp.open("POST", "loggedExcercise", true);
    xhttp.send();
    }

    function ajaxCallAcceptXML() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
        document.getElementById("sleepLogList").innerHTML = xhttp.responseText;
        }
    };
    xhttp.open("GET", "loggedSleep", true);
    xhttp.send();
    }











