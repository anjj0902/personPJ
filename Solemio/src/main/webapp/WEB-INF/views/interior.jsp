<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
     <link rel="stylesheet" href="resources/css/interior.css">
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
     <script>
                    $(document).ready(function(){
                        var user = {};
                        
                        $.ajax({
                      	  url:"checkLogin"
                        }).done(function(d){
                      	  user = JSON.parse(d);
                      	  console.log(user);
                      	 if(user.state==0){
                      		 $("#loginbutton").show();
                      		 $("#joinbutton").show();
                      		 
                      	 }else{
                      		 $("#joinbutton").hide();
                      		 $("#loginbutton").hide();             		 
                      		 $("#btnIdbox p").html(user.id +"님 입장.").css({"color":"white","margin":"0","font-size":"13px"})
                      		var tag ="<button type='button' class='logout'id='logoutbtn' style='color : red; '>로그아웃</button>"
               		    		$("#btnIdbox .logout").html(tag);
                      	 }
                      	 if(user.auth==1){
                       		 $("#memberinfo-view").show();
                       	 }else{
                       		$("#memberinfo-view").hide();
                       	 }
                        });
                             $(".logout").click(function(){
                          	   $.ajax({
                          		   url:"logout"
                          	   }).done(function(d){
                          		   alert("로그아웃됩니다.")
                          		 location.reload();
                          	   });
                             });
                       
                        //$(".banner").height($(".banner").height() + $(".contents-footer").height());
                        
                    });
                    
     </script>    
    <style>
        body::-webkit-scrollbar { 
            display: none; 
        }
          .modal-header, h4, .close {
          background-color:  rgba(242, 160, 4, 0.56);
          color:white !important;
          text-align: center;
          font-size: 30px;
          }
      .modal-footer {
          background-color: #f9f9f9;
      }
        p {
            margin-bottom: 0;
        }
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width: 70%;
            margin: auto;
        }
  </style>
    </head>
    <body>
        <div class="bigbox">
           <div id="left-fixed">
            <div class="menu">
                <div class="menu-drop">
                    <div class="menu-drop-logo">
                       <a href="main"><img src="resources/img/KakaoTalk_20171226_135740144.png" style="width: 100%;height: 20%; padding-bottom: 50%;"></a>

                        
                    </div>
                     <div id="navi" style="width: 120px;">
                                  <ul>
                            <li class="active"><a href="#">SoleMio</a>
                                <ul>
                                    <li><a href="introduce">Introduce</a></li>
                                    <li><a href="direction">Direction</a></li>
                                    <li><a href="interior">Interior</a></li>

                                </ul>
                            </li>
                            <li><a href="#">Menu</a>
                                <ul>
                                    <li><a href="spagetti">Spaghetti</a></li>
                                    <li><a href="risotto">risotto</a></li>
                                    <li><a href="pizza">pizza</a></li>
                                    <li><a href="stake">stake</a></li>
                                    <li><a href="salad">salad</a></li>
                                    <li><a href="sidemenu">side menu</a></li>

                                </ul>
                            </li>
                            <li><a href="#">Customer</a>
                                <ul>
                                    <li><a href="notice">Notice</a></li>
                                    <li><a href="cusvoice">Cus voice</a></li>

                                </ul>
                            </li>
                            <li><a href="#">My Page</a>
                                <ul>
                                    <li><a href="mypage">Member</a></li>


                                </ul>
                            </li>
             
                                                        
            </ul>
            
        </div>
                </div>
                 <div class="menu-login">
                    <div class="container" style="margin-top: 0%;width: 100%; height: 125px; padding: 27px 0 32px 22px;
                    background: #311e0a;
                    border-top: 1px solid #5a4b3b;
                    border-bottom: 1px solid #5a4b3b;
                    margin-bottom: 110px;">
                      <a href="memberinfo" id="memberinfo-view"  style="text-align: center;margin-left: 2px; font-family: 'Nanum Brush Script', serif;font-weight: bold; font-size: 20px">회원정보 보기</a>
                      
                      <a href="login"><button type="button" class="btn btn-default btn-sm loginbtn" id="loginbutton" style="float: left; font-size: 1.3rem; font-family: 'Nanum Brush Script', serif; font-weight: bold;">Login</button></a>
                                    
                       <!--join 버튼-->
                                         
                  <a href="join"><button type="button" class="btn btn-default btn-sm joinbtn" id="joinbutton" style=" font-size: 1.3rem;font-family: 'Nanum Brush Script', serif;font-weight: bold; " >Join</button></a>                  
                    
                     <div id="btnIdbox" style="width: 100%;height: 20px;">
                    	<p style="margin : 0%"></p>
                    	<div class="logout">
                    		
                    	</div>
                    </div>
                    </div>

                
                </div>
            </div>
               <!-- left 이미지-->
            <div class="preview">
               
                
            </div>
            </div>
            <!--실제내용들어가는곳-->
            <div class="banner">
                <div class="contents-head">

                    <div class="head-letter" style="margin-top: 4%;">
                    <p style="color: rgb(137,203,49);margin-left: 5%; font-family: rgb(51, 51, 51);"><span style="font-size: 60px;color: rgb(196,173,101);">S</span>olemio interior</p>
                        <p style="margin-top: -3%;margin-left: 5%;    color: rgb(137,203,49);"><span style="font-size: 60px;color: rgb(196,173,101);">인</span>테리어</p>
                    <div class="tree-bar" style="width: 100%;height: 24px;">
                        <div style="width: 242px; height: 24px;background : url(/web/resources/img/linemap_bg.png) 0 0 no-repeat; margin-top: -2%;margin-left: 3%;">
                        	<a href="main"><p style="font-size: 20px;color: white;margin-left: 13%;">home으로 이동</p></a>
                        </div>
                        <hr style="width:71%; margin-left: 31%;margin-top: 0%;border: outset 1,,px yellow">
                        
                    </div>
                    </div>
                </div>
                <div class="contents-middle">
                    <div class="container" style="margin-top: 11%;">
                        
                          <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators" style="left: 34%;">
                              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                              <li data-target="#myCarousel" data-slide-to="1"></li>
                              <li data-target="#myCarousel" data-slide-to="2"></li>
                              <li data-target="#myCarousel" data-slide-to="3"></li>
                              <li data-target="#myCarousel" data-slide-to="4"></li>
                              <li data-target="#myCarousel" data-slide-to="5"></li>
                              <li data-target="#myCarousel" data-slide-to="6"></li>
                              <li data-target="#myCarousel" data-slide-to="7"></li>
                                
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">

                              <div class="item active">
                                <img src="resources/img/in1.jpg" alt="Los Angeles" style="width:824px; height:337px;margin-left: 0px;">
                                <div class="carousel-caption" style="right: 48%; left: 16%;">
                                 <h3>솔레미오</h3>
                                  <p>연신내점</p>
                                </div>
                              </div>

                              <div class="item">
                                <img src="resources/img/in2.jpg" alt="Chicago" style="width:824px;height: 337px;margin-left: 0px;">
                                <div class="carousel-caption"style="right: 48%; left: 16%;">
                                  <h3>솔레미오</h3>
                                  <p>연신내점</p>
                                </div>
                              </div>

                              <div class="item">
                                <img src="resources/img/in3.jpg" alt="New York" style="width:824px;height: 337px;margin-left: 0px;">
                                <div class="carousel-caption"style="right: 48%; left: 16%;">
                                 <h3>솔레미오</h3>
                                  <p>연신내점</p>
                                </div>
                              </div>
                                
                               <div class="item">
                                <img src="resources/img/in4.jpg" alt="New York" style="width:824px;height: 337px;margin-left: 0px;">
                                <div class="carousel-caption"style="right: 48%; left: 16%;">
                                 <h3>솔레미오</h3>
                                  <p>연신내점</p>
                                </div>
                              </div>
                                
                              <div class="item">
                                <img src="resources/img/in5.jpg" alt="New York" style="width:824px;height: 337px;margin-left: 0px;">
                                <div class="carousel-caption"style="right: 48%; left: 16%;">
                                 <h3>솔레미오</h3>
                                  <p>연신내점</p>
                                </div>
                              </div>
                                
                              <div class="item">
                                <img src="resources/img/in6.jpg" alt="New York" style="width:824px;height: 337px;margin-left: 0px;">
                                <div class="carousel-caption"style="right: 48%; left: 16%;">
                                 <h3>솔레미오</h3>
                                  <p>연신내점</p>
                                </div>
                              </div>
                                
                              <div class="item">
                                <img src="resources/img/in7.jpg" alt="New York" style="width:824px;height: 337px;margin-left: 0px;">
                                <div class="carousel-caption"style="right: 48%; left: 16%;">
                                <h3>솔레미오</h3>
                                  <p>연신내점</p>
                                </div>
                              </div>
                                
                             
                                
                              <div class="item">
                                <img src="resources/img/in9.jpg" alt="New York" style="width:824px;height: 337px;margin-left: 0px;">
                                <div class="carousel-caption"style="right: 48%; left: 16%;">
                                  <h3>솔레미오</h3>
                                  <p>연신내점</p>
                                </div>
                              </div>

                            </div>

                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                              <span class="glyphicon glyphicon-chevron-left"></span>
                              <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control"style="left: 653px;" href="#myCarousel" data-slide="next">
                              <span class="glyphicon glyphicon-chevron-right"></span>
                              <span class="sr-only">Next</span>
                            </a>
                          </div>
                        </div>
                  
                    
                </div>
              
                
            
            </div>
            
            <div class="fixright">
            	<div class="fixright-head">
            		<div class="fixright-head-first"></div>
            		<div class="fixright-head-second">
            			<p style="font-size: 30px;font-family: 'Nanum Brush Script', serif; margin-left: 7%;"><span style="font-size: 50px;font-family: 'Jeju Hallasan';">O</span>riginal italia</p>
            			<p style="font-size: 30px;font-family: 'Nanum Brush Script', serif; margin-left: 26%;margin-top: -17%;"><span style="font-size: 50px;font-family: 'Jeju Hallasan';">S</span>olemio</p>
            		</div>
            		<div class="fixright-head-thrid"></div>
            	</div>
            	<div class="fixright-middle">
            		<img style="width: 100%;height: 35%;"
            		src="http://www.sorrento.co.kr/img/common/right_img1.png" alt="">
            		<img style="width: 100%;height: 35%;"
            		src="http://www.sorrento.co.kr/img/common/right_img2.png" alt="">
            		<img style="width: 100%;height: 35%;"
            		src="http://www.sorrento.co.kr/img/common/right_img3.png" alt="">
            	</div>
            	<div class="fixright-footer"></div>
            </div>
            
        </div>
       
        
    </body>
   
</html>