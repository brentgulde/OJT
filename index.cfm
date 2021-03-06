<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Monitoring System  </title>
  <link
  rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Roboto:400,700"
  />
  <!-- https://fonts.google.com/specimen/Roboto -->
  <link rel="stylesheet" href="css/fontawesome.min.css" />
  <!-- https://fontawesome.com/ -->
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <!-- https://getbootstrap.com/ -->
  <link rel="stylesheet" href="css/templatemo-style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
  <link rel="stylesheet" href="css/clock.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
  <link rel="stylesheet" href="css/table.css">
  <link rel="stylesheet" href="css/transition.css">
  <link rel="stylesheet" href="css/dialog.css">
  <script>
    var myVar;

    function myFunction() {
      myVar = setTimeout(alertFunc, 3000);
    }

    function alertFunc() {
     window.location.href = "index.cfm";
   }
  
  

 </script>

 <style>
   body,html { 
    height: 100%;
    margin: 0;
  }
  .bg {
    /* The image used */
    background-image: url("img/image2.jpg");


    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
  }





</style>

</head>




<div class="bg">

  <body id="reportsPage">
    <div class="" id="home">

      <nav class="navbar navbar-expand-xl">

        <div class="container h-100">

          <h1 class="tm-site-title mb-0">University of the Immaculate Conception - Student Monitoring System</h1>


        </div>
      </div>
    </nav>
    
   
    <form action="scan.cfm" method="post">
      <div class="hiddenbar">
        <input type="text" class="my-input" name="bar" autocomplete="off" autofocus="">
        <input type="Submit">
      </div>
    </form>

<div class="container" >
  <div class="row tm-content-row" >
    <div class="col-12 tm-block-col">
      <div class="tm-bg-primary-dark tm-block-12">

        <div class="clock-container">
          <div class="clock-col">
            <p class="clock-day clock-timer">
            </p>

            <p class="clock-label">
              Day
            </p>

          </div>
           <div class="clock-col">
            </div>
          <div class="clock-col">

            <p class="clock-hours clock-timer">
            </p>
            <p class="clock-label">
              Hours
            </p>
          </div>
          <div class="clock-col">
            <p class="clock-minutes clock-timer">
            </p>
            <p class="clock-label">
              Minutes
            </p>
          </div>
          <div class="clock-col">
            <p class="clock-seconds clock-timer">
            </p>
            <p class="clock-label">
              Seconds
            </p>
          </div>

          <div class="clock-col">
            <p class="clock-ampm clock-timer">
            </p>
            <p class="clock-label">
            </p>
            <p class="clock-label">
              Am/Pm
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- row -->

      <div class="row tm-content-row">
        <div class="tm-block-col tm-col-avatar">
          <div class="tm-bg-primary-dark tm-block tm-block-avatar">

            <div class="tm-avatar-container">



              <img
              src="img/avatarperson.png"
              alt="Avatar"
              class="tm-avatar img-fluid mb-4"
              />
              <h2 class="tm-block-title"></h2>
              <h2 class="tm-block-title"><br><br></h2>


            



            </div>

          </div>
        </div>







      <cfquery name="logs" datasource="Student"> 
        Select TOP 4 * from tbl_log 
        order by logid DESC ;

      </cfquery>





      <div class="tm-block-col tm-col-account-settings">
        <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">

         <div class="tm-notification-items">


          <cfoutput query="logs">

           <table cellspacing="0" >


            <tr>
              <div class="flip-in-hor-top">
               <td><img src="#image#" alt="" /></td>
               <td>#FNAME# #LNAME#</td>
               <td>#COURSE#</td>

               <cfif #REG# eq "IN">
                <cfset background = "yellowgreen">
              <cfelseif #REG# eq "OUT">
                <cfset background = "red">
              <cfelse>
                <cfset background = "blue">
              </cfif>
              <td id="status"><div style="color:#background#;">#REG#</div></td>          
              <td>#TIMEDATE#</td>

            </div>
          </tr>
          <br>


        </table>


      </cfoutput>




    </div>
  </div>
</div>
</div>
</div>



</div>




<!--- <cfif time EQ SystemTime>
  <cflocation url="index.cfm" addToken="false" statusCode="301">
</cfif> --->


<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.2/moment.min.js'></script>
<script src="js/clock.js"></script>
<script src="js/barcode.js"></script>
<script src="js/dialog.js"></script>

</body>
</html>
