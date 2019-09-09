<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>실보미</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="/silbomi/resources/green/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/silbomi/resources/green/css/animate.css">
    
    <link rel="stylesheet" href="/silbomi/resources/green/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/silbomi/resources/green/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/silbomi/resources/green/css/magnific-popup.css">

    <link rel="stylesheet" href="/silbomi/resources/green/css/aos.css">

    <link rel="stylesheet" href="/silbomi/resources/green/css/ionicons.min.css">
    
    <link rel="stylesheet" href="/silbomi/resources/green/css/flaticon.css">
    <link rel="stylesheet" href="/silbomi/resources/green/css/icomoon.css">
    <link rel="stylesheet" href="/silbomi/resources/green/css/style.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
   <!--  <link rel="stylesheet" href="/silbomi/resources/doct/style.css"> -->
    
    <script type="text/javascript" src="/silbomi/resources/ckeditor/ckeditor.js"></script>
    


<style>    

.navis {
	margin-top:10px;
}

.navis:hover {
	font-weight:bold !important;
	font-color:#ffffff !important;
	color:#ffffff !important;
	background-color: #55E491 !important;
}
#galler {
	margin-bottom:20px; 
	border-radius:20px 20px 20px 20px; background-color:#EBFBFF;
}

#clics {
	border:none;
	border-radius:20px 20px 20px 20px;
}

#clics:hover {
	background:#16e56d;
	transform: translateX(1em) translateY(-1em);
     transition: all 0.2s ease-in-out;
     cursor:pointer;
}
#clics:active {
	transform: translateX(1em) translateY(-1em);
     transition: all 0.5s ease-in-out;
    box-shadow: 240px 0 0 0 rgba(0,0,0,0.25) inset, -240px 0 0 0 rgba(0,0,0,0.25) inset;
}


input[type="checkbox"] {
	width: 20px;
	height: 20px;
	border: 2px solid #bcbcbc;
	cursor: pointer;
}


.filebox input[type="file"] {
   width:1px;
   height:1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}

.filebox label {
    display: inline-block;
    padding: .5em .75em;
    color: #999;
    font-size: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border: 1px solid #ebebeb;
    border-bottom-color: #e2e2e2;
    border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
    display: inline-block;
    padding: .5em .75em;
    font-size: inherit;
    font-family: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
 
}

.filebox.bs3-primary label {
  color: #fff;
    background-color: #337ab7;
    border-color: #2e6da4;
}

.reply:hover {
	cursor:pointer;
}





/* Appointment Area css
======================================================================= */
.appointment-area .appointment-form {
  position: relative;
  z-index: 1; }
  .appointment-area .appointment-form label {
    display: block;
    color: #33363e;
    font-size: 16px;
    font-family: "Playfair Display", serif;
    margin-bottom: 10px; }
  .appointment-area .appointment-form input {
    display: block;
    width: 100%;
    border: 1px solid #e8edf1;
    height: 50px;
    padding: 0 15px; }
    .appointment-area .appointment-form input:focus {
      -webkit-box-shadow: none;
      -moz-box-shadow: none;
      box-shadow: none; }
  .appointment-area .appointment-form textarea {
    display: block;
    width: 100%;
    border: 1px solid #e8edf1;
    padding: 15px 15px;
    height: 150px;
    margin-bottom: 50px; }
  .appointment-area .appointment-form .form-group {
    margin-bottom: 25px; }
.appointment-area form {
  margin-top: 24px;
  display: inline-block;
  width: 100%; }
.appointment-area .card {
  border: none;
  border-radius: 0; }
  .appointment-area .card .card-header {
    border-radius: 0;
    border: none;
    background-color: #fff; }
  .appointment-area .card .card-header:first-child {
    border-radius: 0; }
  .appointment-area .card .btn-link.collapsed {
    border-bottom: 1px solid #d9ebff;
    font-weight: 400;
    color: #1d1d1d;
    font-size: 16px;
    width: 100%;
    text-align: left;
    box-shadow: none;
    white-space: normal;
    transition: all 300ms linear 0s; }
    .appointment-area .card .btn-link.collapsed:hover {
      text-decoration: none; }
    @media (max-width: 1199px) {
      .appointment-area .card .btn-link.collapsed {
        font-size: 14px; } }
  .appointment-area .card .card-body {
    font-weight: 300;
    font-size: 14px;
    line-height: 27px;
    background: #f7f7f7; }
  .appointment-area .card .card-header {
    padding: 0; }
  .appointment-area .card .btn-link {
    font-weight: 400;
    color: #1d1d1d;
    font-size: 16px;
    width: 100%;
    text-align: left;
    padding: 25px 0;
    white-space: normal;
    transition: all 300ms linear 0s; }
    .appointment-area .card .btn-link:hover {
      text-decoration: none; }
    @media (max-width: 1199px) {
      .appointment-area .card .btn-link {
        font-size: 14px; } }
.appointment-area h3 {
  font-size: 24px;
  color: #33363e;
  text-transform: capitalize;
  margin-bottom: 35px; }
.appointment-area .appointment-inner {
  padding: 65px 0;
  box-shadow: 3.517px -8.285px 30px 0px rgba(12, 58, 132, 0.15);
  background: #fff;
  z-index: 11;
  /* position: relative; */ 
  }
  @media (max-width: 991px) {
    .appointment-area .appointment-inner {
      padding: 65px 30px; } }

@media (max-width: 1199px) {
  .appointment-inner .accordion {
    margin-bottom: 50px; } }
.appointment-area .card h5 .btn.collapsed::after {
  content: "\e61a";
  font-family: 'themify';
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  right: 6px;
  /* position: absolute; */
  top: 30px; }
  @media (max-width: 600px) {
    .appointment-area .card h5 .btn.collapsed::after {
      display: none; } }

.appointment-area .card h5 .btn::after {
  content: "\e622";
  font-family: 'themify';
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  right: 6px;
  /* position: absolute; */
  top: 30px; }
  @media (max-width: 600px) {
    .appointment-area .card h5 .btn::after {
      display: none; } }



#cursor:hover {
	cursor:pointer;
}

</style>    


  </head>
  
 
  
  
  
  
  