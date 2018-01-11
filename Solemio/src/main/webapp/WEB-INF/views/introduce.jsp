<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
     <link rel="stylesheet" href="resources/css/introduce.css">
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
                      <a href="memberinfo" id="memberinfo-view" style="text-align: center;margin-left: 2px; font-family: 'Nanum Brush Script', serif;font-weight: bold; font-size: 20px">회원정보 보기</a>
                      
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
                    <p style="color: rgb(137,203,49);margin-left: 5%; font-family: rgb(51, 51, 51);"><span style="font-size: 60px;color: rgb(196,173,101);">S</span>olemio Introduce</p>
                        <p style="margin-top: -3%;margin-left: 5%;    color: rgb(137,203,49);"><span style="font-size: 60px;color: rgb(196,173,101);">인</span>사말</p>
                    <div class="tree-bar" style="width: 100%;height: 24px;">
                        <div style="width: 242px; height: 24px;background : url(resources/img/linemap_bg.png) 0 0 no-repeat; margin-top: -2%;margin-left: 3%;">
                        	<a href="main"><p style="font-size: 20px;color: white;margin-left: 13%;">home으로 이동</p></a>
                        </div>
                        <hr style="width:71%; margin-left: 31%;margin-top: 0%;border: outset 1,,px yellow">
                        
                    </div>
                    </div>
                </div>
                <div class="contents-middle" >
                    <div class="middle-head" style="margin-top: 13%;margin-left: 3%;">
                         <p><img src="resources/img/tree.png" style="width: 10%;height: 20%;"><span style="transform: translateX(-3%);">"맛잇는 즐거움이 가득한곳" </span><br>솔레미오에서 맛도 분위기도 서비스도 모두 챙겨가세요!</p>
                    </div>
                    <div class="middle-body">
                    	<div class="intro-middle-left" style=""></div>
                        <div class="intro-middle-middle" style="width: 10%;height: 100%;float: right;"></div>
                    	<div class="intro-middle-right"  style="width: 70%; height: 100%; float: right;margin-left: 20%;">
                    		<p class="p1" style="margin: 0;margin-top: 3%;">2000년 부천의 한 작은 매장에서 시작된 솔레미오가 어느덧 대한 민국을 대표하는 스파게티/피자 브랜드로 자리잡았습니다. 이는 말할 것도 없이 그 동안 솔레미오를 사랑해주신  &nbsp;&nbsp; 고객 여러분의 덕입니다.<span>감사합니다.</span></p>
                      
                        <p class="p2" style="margin: 0; margin-top: 1%;">우리에게는 고객의 행복한 미소보다 더 값진 상은 없을 것입니다. 그 어떤 상보다 <span>"맛있게 잘 먹고 갑니다."</span> 한마디가 반갑습니다.</p>
                        <p class="p2" style="margin: 0;">그러기에 매장이 하나씩 늘어가고 메뉴가 하나씩 늘어갈 때마다 행여 솔레미오를 아껴주시는 고객 여러분들께 실망을 드리지나 않을까 많이 조심스럽습니다.</p>
                        <p class="p2" style="margin: 0;    margin-top: 1%;">그 동안 솔레미오에 찬사와 감사를 전하는 분들도 계셨고 따끔한 질책을 보내 주시는 분들도 계셨습니다. 격려도 비판도 모두 솔레미오에 관심이 있으셔서 해주신 고마운 말들이라는 것 또한 잘 알고있습니다. 앞으로도 <span>많은 칭찬과 비판 부탁드립니다.</span></p>
                        <p class="p2" style="margin: 0; margin-top: 1%;"><span>솔레미오는 오늘도 고객여러분의 쉼터가 되기위해서 노력하고 있습니다.</span>솔레미오는 단순히 배를 채우는 곳에 만족하지않습니다. 고객이 매장에 들어서는 순간부터 편안하고 안락한 분위기에서 최상의 서비스를 제공받을 수 있는 곳이 되려 합니다.</p>
                        <p class="p2" style="margin: 0; margin-top: 1%;">자리를 빌어 <span>그동안 솔레미오를 사랑해주신 고객 여러분께 감사하다는 말씀 다시 드립니다.</span> 또한 우리 솔레미오가 이렇게 발전할 수 있도록 함께 노력해주신 점주 여러분께도 대단히 감사하다는 말씀 들립니다.</p>
                        <p class="p3"><span>솔레미오 전 가족은 고객 여러분을 정성껏 모시기 위해 언제나 최선을 다할 것이라는 약속 드리면서 언제나 시작하는 마음으로 하루하루를 준비 하겠습니다.</span></p><br><span style="margin-left: 44%;">-연신내 솔레미오 직원일동-</span>
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