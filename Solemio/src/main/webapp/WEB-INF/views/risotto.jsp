<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
     <link rel="stylesheet" href="resources/css/cusvoice.css">
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
     <script>
                    $(document).ready(function(){
                        $("#myBtn").click(function(){
                            $("#myModal").modal();
                        });
                        $("#myBtn1").click(function(){
                            $("#myModal1").modal();
                        });
                        $(".loginbtn").click(function(){
                            $(".modal-backdrop").removeClass();
                        });
                         $(".joinbtn").click(function(){
                            $(".modal-backdrop").removeClass();
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
                    <a style="text-align: center;margin-left: 25px; font-family: 'Nanum Brush Script', serif;font-weight: bold; font-size: 20px">회원정보 보기</a>
                
                    <div class="container" style="margin-top: 0%; margin-top: -37%;width: 100%; height: 125px;height: 90px;  padding: 27px 0 32px 22px;
                    background: #311e0a;
                    border-top: 1px solid #5a4b3b;
                    border-bottom: 1px solid #5a4b3b;
                    margin-bottom: 110px;">
                      
                      <!-- Trigger the modal with a button -->
                      <button type="button" class="btn btn-default btn-sm loginbtn" id="myBtn" style="float: left; font-size: 1.3rem; font-family: 'Nanum Brush Script', serif; font-weight: bold;">Login</button>
                  
                    

                    
                    
                    <!--join 버튼-->
                           
                      
                      <!-- Trigger the modal with a button -->
                      
                    <button type="button" class="btn btn-default btn-sm joinbtn" id="myBtn1" style=" font-size: 1.3rem;font-family: 'Nanum Brush Script', serif;font-weight: bold; " >Join</button>
                    

                    
                    
                    </div>
                    <div class="container" style="margin-top: 0%; margin-top: -84%;width: 100%; height: 125px;height: 90px;  padding: 27px 0 32px 22px;
                    background: #311e0a;
                    border-top: 1px solid #5a4b3b;
                    border-bottom: 1px solid #5a4b3b;
                    margin-bottom: 110px;">
                        <a style="text-align: center;margin-left: 10px; font-family: 'Nanum Brush Script', serif;font-weight: bold; font-size: 20px">@솔레미오</a>
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
                    <div class="head-empty"></div>
                    <div class="head-letter">
                        <p><span>공</span>지사항</p>
                        <button type="button" style="margin-left: 620px;">등록</button>
                    </div>
                </div>
                <div class="contents-middle">
                    <div class="notice-header">
                        <div class="notice-header-no">번호</div>
                        <div class="notice-header-title">제목</div>
                        <div class="notice-header-id">아이디</div>
                    </div>
                    <div class="notice-middle">
                        <div class="notice-middle-no">1</div>
                        <div class="notice-middle-title">솔레미오 공지사항 입니다.</div>
                        <div class="notice-middle-id">test</div>
                    </div>
                     <div class="notice-middle">
                        <div class="notice-middle-no">2</div>
                        <div class="notice-middle-title">1월초 신메뉴 로제크림파스타 출시예정</div>
                        <div class="notice-middle-id">test1</div>
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