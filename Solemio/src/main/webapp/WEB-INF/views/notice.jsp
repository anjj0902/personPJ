<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
     <link rel="stylesheet" href="resources/css/notice.css">
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>   
	   .page{
	      text-align : center;}
	   .page a {
	      display: inline-block;
	      width: 20px;
	      
	   }
	   .bg {
	      background-color: gray;
	      color : white;
	   }
	</style>
     <script type="text/javascript">
                    $(document).ready(function(){
                    	  var data = [];      
                    	   var viewRow = 10;   
                    	   var tag = "";
                    	   var tag1= "";
                    	   var page = 1;
                    	   var totCnt = 0;
                    	   
                    	$("#notice-writebtn").click(function(){
                        	location.href="noticeregister";
                        })
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
                       		 $("#notice-writebtn").show();
                       	 }else{
                       		$("#memberinfo-view").hide();
                       		$("#notice-writebtn").hide();
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
                            
                             
                             function createHtml(){ // ul(부모) 태그 속에 li(자식) 태그 넣기 위한 함수
                                 
                                 $(".form").empty(); // ul 태그의 자식들를 초기화가 필요하다.
                                    
                                 
                                 for(var i = 0; i<data.length; i++){
                                    tag =  '<div class="notice-middle listbigbox">'+
                           				      ' <div class="notice-middle-no">'+(i+1)+'</div>'+
                           				      	' <div class="notice-middle-title">'+data[i].title+
                           				      '</div>'+
                           				      '<div class="notice-middle-id">'+data[i].id+'</div>';
                           				   
                           			     $(".form").append(tag);
//                            		$("form").html(tag);
                                   	
                                 }
                                 $(".listbigbox").off();
                                 $(".listbigbox").on("click",function(){
                                    var index = $(".listbigbox").index(this);
                                    console.log("jsp :" +index);
                                    var newsNo = data[index].no;
                                    location.href = "noticedetail?newsNo=" + newsNo;
                                 });
                             }
                                 
                                 function createPaging(){
                                     
                                     var paging = totCnt / viewRow;
                                     // 전체의 행의 수에서 보여줄 행을 나누면 페이지의 갯수를 알 수 있다.
                                     $(".page").empty(); // div 태그 속에 a 태그를 초기화 한다.
                                     for(var i = 0; i < paging; i++){
                                        $(".page").append("<a href='#" + (i + 1) + "'>" + (i + 1) + "</a>")
                                     }      
                                     
                                     $(".page a").eq(page - 1).addClass("bg"); 
                                     
                                     $(".page a").off().on("click", function(){ // 페이지 전환 이벤트를 작성 한다.
                                           // a 태그 중에 몇번째 페이지인지 알면 리스트 화면를 다시 보여 줄 수 있다. page 변수 활용 할것!
                                           page = $(this).text(); // 선택한 페이지의 text 추출
                                           
                                           var a = page+"page";
                                         $("#paginationCurrentPage").empty();
                                         if($("#paginationCurrentPage").text()==null){
                                            $("#paginationCurrentPage").text("1page");
                                         }else{
                                            $("#paginationCurrentPage").append(a);
                                         }
                                           setTimeout(function(){ 
                                              initData(); // 디비에서 데이터 다시 가져 오기 위하여 함수 호출
                                           }, 100); // 타이머가 완료된 뒤 지정 함수가 실행 됨
                                        });
                                     
                                  }
                                 
                                 function initData(){ // 디비에서 데이터 가져오기 위한 함수
                                     
                                     var hash = location.hash; // a 태그의 이벤트로 발생한 hash 값을 가져온다.
                                     if(hash != ""){ // hash 값이 있을 경우 page 변수의 값으로 사용한다.
                                        page = hash.substr(1, hash.length);
                                     }      
                                        
                                     var end = (viewRow * page); // 10 * 2 = 20 
                                     var start = (end - viewRow); // 20 - 10 = 10
                                     
                                     $.ajax({
                                           type:"post", 
                                           url:"newsData", // Spring에서 만든 URL 호출
                                           data:{"start":start, "viewRow":viewRow} // 파라메터로 사용할 변수 값 객체 넣기
                                     }).done(function(d){ // 비동기식 데이터 가져오기
                                        var result = JSON.parse(d);
                                        data = result.list;
                                        totCnt = result.totCnt.tot;
                                        
                                        createHtml(); // 화면에 표현하기 위하여 함수 호출
                                        
                                        createPaging(); // 페이지 링크 표현하기 우하여 함수 호출
                                     })
                                  }
                                  initData();
                        
                        
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
                      <a href="memberinfo"id="memberinfo-view"  style="text-align: center;margin-left: 2px; font-family: 'Nanum Brush Script', serif;font-weight: bold; font-size: 20px">회원정보 보기</a>
                      
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
                    <p style="color: rgb(137,203,49);margin-left: 5%; font-family: rgb(51, 51, 51);"><span style="font-size: 60px;color: rgb(196,173,101);">S</span>olemio Notice</p>
                        <p style="margin-top: -3%;margin-left: 5%;    color: rgb(137,203,49);"><span style="font-size: 60px;color: rgb(196,173,101);">공</span>지사항</p>
                    <div class="tree-bar" style="width: 100%;height: 24px;">
                        <div style="width: 242px; height: 24px;background : url(/web/resources/img/linemap_bg.png) 0 0 no-repeat; margin-top: -2%;margin-left: 3%;">
                        	<a href="main"><p style="font-size: 20px;color: white;margin-left: 13%;">home으로 이동</p></a>
                        </div>
                        <hr style="width:71%; margin-left: 31%;margin-top: 0%;border: outset 1,,px yellow">
                        <button id="notice-writebtn" type="button" style="margin-top: -6%;float: right;">등록</button>
                    </div>
                    </div>
                </div>
                <div class="contents-middle form" style="margin-top: 11%;">
                
                    
                </div>
                <div class="page" style="width: 100%; height: 50px;"></div>
              
                
            
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