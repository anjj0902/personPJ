<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
     <link rel="stylesheet" href="resources/css/login.css">
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
     <script>
                    $(document).ready(function(){
                    	var id= "";
                    	var pw ="";
                    	$("#loginbutton").off();
                    	$("#loginbutton").on("click",function(){
                    		id =$("#id").val();
                    		pw =$("#pw").val();
                    		if(id.length > 0 && pw.length > 0){
                    			
                    			$.ajax({
                    				type:"post",
                    				url:"loginData",
                    				data:{"id":id, "pw":pw}
                    			}).done(function(result){
                    				var data = JSON.parse(result);
                    				console.log("결과 :" + data.stat)
                    				if(data.stat == 1){
                    					location.href="main"
                    				}else{
                    					alert("입력하신 정보가 잘못되었습니다.");
                    				}
                    			})
                    		}else{
                    			if($("#id").val() ==""){
                    				alert("아이디를 입력하세요.");
                    			}else{
                    				alert("비밀번호를 입력하세요.");
                    			}
                    		}
                    	})
                      
                       
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
                     
                      
                      <a href="login"><button type="button" class="btn btn-default btn-sm loginbtn" id="logipgnbutton" style="float: left; font-size: 1.3rem; font-family: 'Nanum Brush Script', serif; font-weight: bold;">Login</button></a>
                                    
                       <!--join 버튼-->
                                         
                  <a href="join"><button type="button" class="btn btn-default btn-sm joinbtn" id="joinpgbutton" style=" font-size: 1.3rem;font-family: 'Nanum Brush Script', serif;font-weight: bold; " >Join</button></a>                  
                    
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
                    <p style="color: rgb(137,203,49);margin-left: 5%; font-family: rgb(51, 51, 51);"><span style="font-size: 60px;color: rgb(196,173,101);">S</span>olemio Login</p>
                        <p style="margin-top: -3%;margin-left: 5%;    color: rgb(137,203,49);"><span style="font-size: 60px;color: rgb(196,173,101);">로</span>그인</p>
                    <div class="tree-bar" style="width: 100%;height: 24px;">
                        <div style="width: 242px; height: 24px;background : url(resources/img/linemap_bg.png) 0 0 no-repeat; margin-top: -2%;margin-left: 3%;">
                        	<a href="main"><p style="font-size: 20px;color: white;margin-left: 13%;">home으로 이동</p></a>
                        </div>
                        <hr style="width:71%; margin-left: 31%;margin-top: 0%;border: outset 1,,px yellow">
                        
                    </div>
                    </div>
                </div>
                <div class="contents-middle" style="margin-top: 10%; margin-left: 10%;">
                  
                    <div class="join-contents-head"></div>
                    <div class="join-contents-middle">
                        <div class="join-middle-left"></div>
                        <div class="join-middle-middle">
                            <div style="margin-top: 10%;">
                                <p style="font-family: 'Nanum Brush Script', serif; font-size: 20px;">솔레미오 로그인 회원가입시 입력하였던 정보를 입력해주세요.!</p><br>
                           <p  style="font-family: 'Nanum Brush Script', serif; font-size: 20px; margin-left: 10%;">아이디 :</p>  <input type="text" name="id" id="id" style="margin-left: 25%;     transform: translateY(-97%);"><br><br> 
                           <p style="font-family: 'Nanum Brush Script', serif; font-size: 20px;margin-left: 10%;">비밀번호 :</p>  <input type="text" name="pw" id="pw" style="margin-left: 25%;    transform: translateY(-97%);"><br><br>
                            
                                </div>
                            <button type="button" id="loginbutton" style="margin-left: 30%;">로그인</button>
                            <button type="button" id="logincansel">취소</button>
                            
                        </div>
                        <div class="join-middle-right"></div>
                        
                    </div>
                    <div class="join-contents-footer"></div>
                    
                    
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