<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style type="text/css">
        .head{
          width: 1350px;
 height: 80px;
 margin: 0 auto;
 background: #203864;
        }
    .flex-center{
  width: 1350px;
 height:500px;
 margin: 0 auto;
        background-image:url({{ URL::asset('assets/images/banar.jpg')}});
  background-repeat: no-repeat;

    }
    .footer{
         width: 1350px;
 height: 80px;
 margin: 0 auto;
 background: #6EB141;
        }

</style>

    </head>
    <body>
        <!-- Header section -->
        <div class="full-container head">

 <h3 class="text-center" style="color: white;padding: 15px" >Dafodill International University</h3>
        </div>
<!-- main content -->
        <div class="full-container flex-center">
    <a class="float-right" style="color:white;padding: 10px" href="{{route('login')}}">Login</a>
<a class="float-right" style="color:white;padding: 10px" href="{{route('register')}}">Register</a>
 <h2 class="text-center" style="color: white;padding: 15px" >Welcome to Student Guide</h2>

<h3 class="text-center" style="color: white;padding: 15px">Connect With Us To Get <span class="text-change"></span></h3>


           </div>
           <!-- footer section -->
            <div class="full-container footer">
 <h3 class="text-center" style="color: white;padding: 15px" ><a href="http://daffodilvarsity.edu.bd/"></a></h3>

        </div>
        <script type="text/javascript">
            $(document).ready(function(){var str=["All Semister Content.","Usefull Video"," "];
                var pos=0,a=0;var html="";function displayText(){if(pos>2)pos=0;console.log(pos);console.log(str[pos].length);if(a<str[pos].length){html+=str[pos].charAt(a);$(".text-change").html(html);a++;}else{a=0;pos++;html="";}}
                   setTimeout(setInterval(displayText,300),200000000);});
        </script>


    </body>
</html>
