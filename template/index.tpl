<!DOCTYPE html>
 <html>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-
scale=1">
<title>Saved By Grace</title>
<link rel='stylesheet' href='/static/css/bootswatch/minty45.min.css'>
<link rel='stylesheet' href='/static/css/mystyle.css'>
<link rel='icon' href='static/imgs/sbg_logo.png'>
 </head>
<style>
@charset "utf-8";
@font-face{
    font-family: Mono;
    src: url("/static/fonts/Monoton-Regular.ttf") format("truetype");
    }
@font-face{
    font-family: Cookie;
    src: url("/static/fonts/Cookiemonster.ttf") format("truetype");
    }
@font-face{
        font-family: LBA;
        src: url("/static/fonts/LaBelleAurore.ttf") format("truetype");
        }

.img{
  background-image: url("static/imgs/blurred-bark.jpg");
  background-size: cover;
  background-repeat: no-repeat;

  }
.clear{
    background: transparent;
    }
.myfont{
    color: #73D216;
    font-family: LBA;
    font-weight: bolder;
    font-size: 30px;
    }
.font-menu{
    color: #73D216;
    font-family: LBA;
    font-weight: bolder;
    font-size: 20px;
    }
.navmar{
    margin: 0;
}
</style>
<body class="">
<nav class="nav navbar navbar-expand-lg navbar-dark bg-primary">
  <img src="static/imgs/sbg_logo.png"
     width="40px"
    height="30px"
     class="navbar-brand ">
  </img>
  <span><a class="navbar-brand myfont text-center" href="#">Saved By Grace</a></span>
  <button class="navbar navbar-toggler"
          type="button"
   data-toggle="collapse"
   data-target="#navbarColor01"
 aria-controls="navbarColor01"
 aria-expanded="true"
    aria-label="Toggle navigation">
    <span class="navbar navbar-toggler-icon"></span>
  </button>
     <!-- You can change 'hide' to 'show' for the menu to appear -->
  <div class="navbar-collapse collapse hide" id=navbarColor01 style="">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item mr-auto">
        <a class="nav-link font-menu" href="/">Home
         <span class="sr-only"></span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link font-menu" href="report">Report</a>
      </li>
      <li class="nav-item font-menu">
        <a class="nav-link" href="fillupform">Form</a>
      </li>
      <li class="nav-item">
        <a class="nav-link font-menu" href="blog">Blog</a>
      </li>
    </ul>
        <form class="d-flex pull-right">
          <input class="form-control mr-sm-2 pull-right"
                  type="text"
           placeholder="Search">
          <button class="btn btn-secondary my-2 my-sm-0 pull-right" type="submit">Submit</button>
        </form>
</nav>
<script src="./static/js/jquery-3.4.1.js"></script>
<script src="./static/js/bootstrap.js"></script>
<script src="./static/js/main.js"></script>
</body>
</html>
