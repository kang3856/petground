<%@page import="java.util.Calendar"%>
<%@page import="com.pmp.pet.dao.PetsDAO"%>
<%@page import="com.pmp.pet.vo.Pet"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.pmp.pet.vo.PetPoint"%>
<%@page import="com.pmp.pet.dao.petPointDAO"%>
<%@page import="com.pmp.pet.dao.UsersDAO"%>
<%@page import="com.pmp.pet.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%
    	User user = new User();
    	user.setId("guswls");
    	user.setPassword("1111");

    	User loginuser = UsersDAO.selectOne(user);
    	
    	int no =(int)loginuser.getUserNo();
    
    	Date now = new Date(); 
    	
    	SimpleDateFormat df = new SimpleDateFormat("yyyy");
    	
    	
    	Calendar cal = Calendar.getInstance();
    	cal.setTime(loginuser.getBirthday());
    %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>PetGround</title>
    <link href="https://fonts.googleapis.com/css?family=Gothic+A1" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/reset.css">
    <style>
        body{
            width:100%;
            min-height:100px;
        }
        body * {
            font-family: 'Gothic A1', sans-serif;
        }
        #header{
            width:100%;
            min-height:100px;
        }
        #header_wrap{
            width:1200px;
            height:100px;
            margin: auto;
            position: relative;
        }
        #header_logo{
            width:200px;
            height:100px;
            background-color: #263238;
            position: absolute;
            left:-200px;
        }
        #header_nav ul{
            width:1200px;
            text-align: center;
        }
        .header_nav_menu_square{
            width:200px;
            height: 50px;
            float: left;
            box-sizing:border-box;
            overflow:hidden;
            position: relative;
            margin-top:25px;
        }
        .header_nav_menu{
            text-decoration: none;
            width:200px;
            height:50px;
            font-size:30px;
            font-weight: bold;
            line-height: 50px;
            display: inline-block;
            color:#c2c2c2;
            position: absolute;
            margin-left:-100px;
        }
        .header_nav_menu_square:hover .header_nav_main{
            display: none;
        }
        .header_nav_menu_square:hover .header_nav_sub{
            color:#212121;
            display: inline-block;
        }
        .header_nav_sub{
            display: none;
        }
        .header_nav_menu::before, .header_nav_menu::after{
            position: absolute;
            opacity: 0;
            width:0%;
            height:2px;
            content: "";
            transition: all .3s;
            background-color: #212121;
        }
        .header_nav_menu::before{
            left:0;
            top:0;
        }
        .header_nav_menu::after{
            right:0;
            bottom:0;
        }
        .header_nav_menu:hover::before, .header_nav_menu:hover::after{
            opacity: 1;
            width: 100%;
        }
        .session_size{
            width:100%;
            min-height:100px;
        }



        #session2{  height: auto; width: 100%;}
        #session3{

            width:100%;
            min-height:100px;
        }
        #pet_detail_pop{
        height:500px;}
    /*mypage css start*/


    </style>
    <link rel="stylesheet" href="css/mypage.css">
    <link rel="stylesheet" href="css/tui-date-picker.css">
    <link rel="stylesheet" href="css/tui-time-picker.css"/>
    <link rel="stylesheet" href="css/freeboard.css"/>
    <link rel="stylesheet" href="css/pet_pride.css">
</head>
<body>
<form method="post" enctype="multipart/form-data" onsubmit="save();return false;">
    <div id="pet_pop_box">
        <div id="pet_input_pop">
            <div class="pet_pop_header">
                <img class="pet_icon select_cat_icon cat_icon" src="mypage_img/cat_icon.png" width="50px" height="50px">
                <img class="pet_icon select_dog_icon dog_icon" src="mypage_img/dog_icon.png" width="50px" height="50px">
                <input class="select_pet_cat hidden" type="radio" name="select_pet" value="C">
                <input class="select_pet_dog hidden" type="radio" name="select_pet" value="d">
                <i class="far fa-times-circle"></i></div>
            <div class="pet_pop_img " id="pet_pop_input">
                <i class="fas fa-plus"></i>
            </div>
            <div class="pet_pop_information">
                <table class="pet_table">
                    <tbody>
                    <tr>
                        <th class="pet_left_side pet_right_setting">이름 </th>
                        <td class="pet_right_side pet_right_name"><input autocomplete="off" name="pet_name">
                            <label>
                            <i class="fas fa-mars gender pet_male"></i>
                            <input class="hidden pet_male" type="radio" name="pet_gender" value="M">
                            </label>
                            <label>
                            <i class="fas fa-venus gender pet_female"></i>
                            <input class="hidden pet_female" type="radio" name="pet_gender" value="F">
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <th class="pet_left_side">나이</th>
                        <td class="pet_right_side pet_right_setting"><input autocomplete="off" name="pet_age" placeholder="3"></td>
                    </tr>

                    <tr>
                        <th class="pet_left_side">품종</th>
                        <td class="pet_right_side pet_right_setting">
                            <input class="kind_key" autocomplete="off" name="pet_kind" placeholder="아메리칸 숏헤어">
                            <input id="update_kind_no" type="hidden" name="pet_kind_no" value="">
                            <ul class="pet_kind_input">

                            </ul>
                        </td>
                    </tr>

                    <tr>
                        <th class="pet_left_side">생일</th>
                        <td class="pet_right_side birth">
                            <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                                <input autocomplete="off" width="1000" type="text" id="datepicker-input" name="pet_birth" aria-label="Date-Time" >
                                <span class="tui-ico-date"></span>
                          </div><div id="wrapper" style="margin-top: -1px;"></div>
                        </td>

                    </tr>
                    </tbody>
                </table>
                <button class="pet_btn pet_btn_input input_btn_setting" formaction="petInsert.jsp?no=<%=loginuser.getUserNo()%>"  >등록</button>
                <button type="button" class="pet_btn btn_cancel out_btn_setting">취소</button>
            </div>
        </div>
    </div>

    <div id="user_pop">
        <ul>
            <li id="user_pop_header"><i class="far fa-times-circle"></i></li>
            <li id="user_pop_img"><i title="삭제" class="fas fa-trash img_btn img_input"></i>

                <i title="사진등록" class="fas fa-camera img_btn img_delete main_img">
                </i><img src="mypage_img/cat4.jpg" id="user_profile_img"></li>


            <li id="user_pop_information">
                <table id="user_table">
                    <tbody>
                        <tr >
                            <th class="left-side user_table_setting">
                                	닉네임
                            </th>
                            <td class="right-side user_table_setting">
                               	 <%=loginuser.getNickname() %>
                            </td>
                        </tr>
                        <tr >
                            <th class="left-side user_table_setting">성별</th>
                            <td class="right-side user_table_setting"> <% if(loginuser.getSex().equals("F")){ %> <i class="fas fa-venus user_pop_gender"> </i> <%}else {%><i class="fas fa-mars user_pop_gender"></i><% }%>
                       </td>
                        </tr>
                        <input class="hidden user_profile_img" type="file">
                        <tr >
                            <th class="left-side user_table_setting">이메일</th>
                            <td class="right-side user_table_setting">
                                <input class="mail" autocomplete="off" name="email" value="<%=loginuser.getEmail().substring(0,loginuser.getEmail().indexOf("@"))%>">@<input class="mail back_mail" readonly="true" name="backmail" autocomplete="off" value="<%=loginuser.getEmail().substring(loginuser.getEmail().lastIndexOf('@')+1)%>">
                                <select class="select_mail mail">
                                    <option value="naver.com">naver.com</option>
                                    <option selected value="gmail.com">gmail.com</option>
                                    <option value="daum.net">daum.net</option>
                                    <option value="direct">직접입력</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                           <th class="left-side user_birth">생년월일</th>
                            <td class="right-side ">
                                <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                                    <input autocomplete="off" type="text" id="datepicker-input2" name="user_birth" aria-label="Date-Time" >
                                    <span class="tui-ico-date"></span>
                                </div><div id="wrapper2" style="margin-top: -1px;"></div>
                            </td>
                        </tr>

                    </table>
                    </tbody>

                </table>
                <button class="user_input_btn in_btn input_btn_setting" formaction="userUpdateInput.jsp?no=<%=loginuser.getUserNo()%>" >등 록</button>
                <button type="button" class="user_input_btn out_btn btn_cancel out_btn_setting">취 소</button>
            </li>

        </ul>
    </div>
  <div id="pet_detail_pop">
             <div id="pet_detail_box">

    </div>
    </div>
    <!--user_pop end-->

    <!--<div id="pet_pop_confirm">-->
    <div id="pet_confirm_pop">
   		
<div class="pet_pop_header">

<label>
<img class="pet_icon confirm_cat_icon cat_icon" src="mypage_img/cat_icon.png" width="50px" height="50px">
<input id="select_cat" class="confirm_pet_cat hidden" type="radio" name="confirm_pet_type" value="C" selected>
</label>
<label>
<img class="pet_icon confirm_dog_icon dog_icon" src="mypage_img/dog_icon.png" width="50px" height="50px">
<input id="select_dog" class="confirm_pet_dog hidden" type="radio" name="confirm_pet_type" value="D">
</label>

<i class="far fa-times-circle"></i></div>
<div class="pet_pop_img " >
<i class="fas fa-plus"></i>
</div>
<div class="pet_pop_information">
<table class="pet_table">
    <tbody>
    <tr>
        <th class="pet_left_side pet_right_setting">이름 </th>
        <td class="pet_right_side pet_right_name">
            <input id="update_pet_name" class="confirm_input_name" autocomplete="off" name="confirm_pet_name" value="">
            <input id="update_pet_no" type="hidden" name="confirm_pet_no" value="">
            <label>
                <i class="fas fa-mars gender pet_male"></i>
                <input class="hidden " type="radio" name="confirm_gender" value="M ">
            </label>
            <label>
                <i class="fas fa-venus gender pet_female"></i>
                <input class="hidden " type="radio" name="confirm_gender" value="F">
            </label>
        </td>
    </tr>

    <tr>
        <th class="pet_left_side">나이</th>
        <td class="pet_right_side pet_right_setting"><input id="update_pet_age"class="confirm_input_age" autocomplete="off" name="confirm_pet_age" value=""></td>
    </tr>

    <tr>
        <th class="pet_left_side">품종</th>
        <td class="pet_right_side pet_right_setting">
            <input id="update_pet_kind" class="kind_key2 confirm_input_kind" autocomplete="off" name="confirm_pet_kind" value="" >
            <ul class="pet_kind_input">

            </ul>
        </td>
    </tr>

    <tr>
        <th class="pet_left_side">생일</th>
        <td class="pet_right_side birth">
            <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                <input autocomplete="off" width="1000" type="text" id="datepicker-input4" name="confirm_pet_birth" aria-label="Date-Time" >
                <span class="tui-ico-date"></span>
            </div><div id="wrapper4" style="margin-top: -1px;"></div>
        </td>

    </tr>
    </tbody>
</table>
<button class="pet_btn pet_btn_input input_btn_setting pet_btn_confirm" formaction="/petUpdate.jsp">등록</button>
<button type="button" class="pet_btn btn_cancel out_btn_setting">취소</button>
</div>
    </div>
    </div>
    <!--</div>-->

    <div id="header">
        <div id="header_wrap">
            <div id="header_logo"></div>
            <div id="header_nav">
                <h2 class="screen_out">주요 서비스</h2>
                <ul>
                    <li class="header_nav_menu_square">
                        <a href="#" class="header_nav_main header_nav_menu">펫그라운드</a>
                        <a href="#" class="header_nav_sub header_nav_menu">PETGROUND</a>
                    </li><!--
                    --><li class="header_nav_menu_square">
                        <a href="#" class="header_nav_main header_nav_menu">펫라이브러리</a>
                        <a href="#" class="header_nav_sub header_nav_menu">PETLIBRARY</a>
                    </li><!--
                    --><li class="header_nav_menu_square">
                        <a href="#" class="header_nav_main header_nav_menu">자유게시판</a>
                        <a href="#" class="header_nav_sub header_nav_menu">FREEBOARD</a>
                    </li><!--
                    --><li class="header_nav_menu_square">
                        <a href="#" class="header_nav_main header_nav_menu">펫부심게시판</a>
                        <a href="#" class="header_nav_sub header_nav_menu">PRIDEBOARD</a>
                    </li><!--
                    --><li class="header_nav_menu_square">
                        <a href="#" class="header_nav_main header_nav_menu">다이어리</a>
                        <a href="#" class="header_nav_sub header_nav_menu">DIARY</a>
                    </li><!--
                    --><li class="header_nav_menu_square">
                        <a href="#" class="header_nav_main header_nav_menu">경쟁전</a>
                        <a href="#" class="header_nav_sub header_nav_menu">comPETition</a>
                    </li>
                </ul>
            </div>
            <div id="header_user"></div>
        </div>
    </div>
    <div id="contents">
        <div id="session1" class="session_size">
            <div id="session1_profile_wrap">
                <div id="content_profile_img">
                    <img src="mypage_img/logo.png" id="profile_img" >
                <label>
                    <i class="fas fa-camera main_img "></i>
                    <input type="file" id="pet_file" class="hidden" />
                </label>
                </div>
                <div id="content_profile_text">
                    <ul id="profile_text">
						
                        <li id="profile_nickname"><%=loginuser.getNickname() %><i class="fas fa-cat camp"></i><i class="fas fa-dog camp"></i></li>
                        <li id="profile_LV" class="profile_information">Lv :<%=loginuser.getUserNo() %></li>
                        <li id="profile_point" class="profile_information">P.P :P / 누적 포인트 :P</li>
                        <li id="profile_medal" class="profile_information"><img src="/userPage/1/"+<%=loginuser.getUserPictureUrl()%>+"" width="60px" height="60px;"></li>

                    </ul>
                </div>
                <div id="tier"><img src="mypage_img/diamond.png"></div>
                <button type="button" id="profile_detail" title="상세정보"><i class="fas fa-cogs user_detail"></i></button>
            </div>
        </div>
        <div id="session2" >
            <div id="session2_menu_wrap">
                <button type="button" class="session2_menu menu_pet_information click_menu "><i class="far fa-address-book"><span class="menu_text new_menu_text "> 펫정보</span></i></button><!--
                --><button type="button" class="session2_menu menu_pet_freeborad"><i class="fas fa-book-open"><span class="menu_text"> 자유게시판</span></i></button><!--
                --><button type="button" class="session2_menu menu_pet_pride"><i class="fas fa-image"><span class="menu_text"> 펫부심</span></i></button>


            </div>
        </div>
        <div id="session3" class="session_size">
            <button type="button" class=" pet_input_box">펫등록</button>
            <ul id="free_board"></ul>
            <ul class="contents_imgList"></ul>
            <div id="session3_pet_wrap">

            </div>


        </div>
        <div id="session4" class="session_size">

        </div>
        <div id="session5" class="session_size">

        </div>
    </div>
    <div id="footer">

    </div>
    <div id="mypage_pop" ></div>
</form>
    <script type="text/template" id="petsTmp">
        <@_.each(mypet,function(mypet){@>
		<div class="pet_frame_box pet_detail_box <@if (mypet.petType =='C') {@>cat_border<@} else{@>dog_border<@}@>">
            <span class="hidden pet_no"><@=mypet.petNo@></span>
            <img class="delete_btn" src="mypage_img/delete.png" value="<@=mypet.petNo@>">
            <i class="fas fa-cogs btn_pet_confirm"></i>
        <div class="content_pet_frame"><img src="/mypage_img/<@=mypet.petPicture@>"><@if(mypet.petSex == 'F'){@> <i class="fas fa-venus gender no_pointer"> </i><@}else {@><i class="fas fa-mars gender no_pointer"></i><@}@></div>
        <ul>
        <li class="pet_name pet_information"><@=mypet.petName@> </li>
        <li class="pet_age pet_information"><@=(moment().format("YYYY")-(moment(mypet.petBirthDay).format("YYYY")))+1@>살</li>
        </ul>
	   </div>
        <@})@>
</script>
<script type="text/template" id="detailsTmp">

    <div class="pet_pop_header <@if (mypetDetail.petType == 'D') {@>dog_select<@} else{@>cat_select<@}@>">
        <img class="pet_icon detail_icon" src="mypage_img/<@if (mypetDetail.petType == 'D') {@>dog_icon.png<@} else{@>cat_icon.png<@}@>" width="50px" height="50px">
        <i class="far fa-times-circle"></i>
    </div>
    <div class="pet_pop_img " >
        <i class="fas fa-plus"></i>
    </div>
    <div class="pet_pop_information">
        <table class="pet_table">
            <tbody>
            <tr>
                <th class="pet_left_side pet_right_setting">이름 </th>
                <td class="pet_right_side pet_right_name"><span class="pet_detail_name"><@=mypetDetail.petName@></span><@if(mypetDetail.petSex == 'F'){@> <i class="fas fa-venus detail_gender no_pointer"> </i><@}else {@><i class="fas fa-mars detail_gender no_pointer"></i><@}@>

                </td>
            </tr>

            <tr>
                <th class="pet_left_side">나이</th>
                <td class="pet_right_side pet_right_setting"><span class="pet_detail_age"><@=moment().format("YYYY")-moment(mypetDetail.petBirthDay).format("YYYY")+1@>살</span></td>
            </tr>
            <tr>
                <th class="pet_left_side">품종</th>
                <td class="pet_right_side pet_right_setting"><span class="pet_detail_kind"><@=mypetDetail.kind@></span></td>
            </tr>
            
            </tbody>
        </table>
    </div>

</script>
<script type="text/template" id="kindTmp">
    <@_.each(data,function(data){@>
        <li class="pet_kind_li"><@=data.kind@></li>
    <@})@>
</script>
<script type="text/template" id="prideTmp">
    <@_.each(prideboard,function(prideboard) { @>

   <div class="contents_imgPart">
        <div class="pride_img1">
            <div class="pride_pop"><span class="pride_pop_content"><i class="far fa-comment">&nbsp;&nbsp;<@=prideboard.reple@></i></span>
                <span class="pride_pop_content pride_pop_content2"><i class="fas fa-paw"></i>&nbsp;&nbsp;20K</span></div>
            <div class="pride_img2"><img src="prideboard/<@=prideboard.pridePictureUrl@>" width="250px" height="250px"></div>
        </div>
    </div>
    </div>
    <@})@>
</script>

<script type="text/template" id="freeSearchTmp">
    <@_.each(freeMains,function(freeMains) { @>
    <li class="s4_contents_box">
        <a href="free_detail.html?no=" class="s4_contents_main">
            <div class="s4_contents_sub">

                <strong class="s4_contents_title"><@=freeMains.freeTitle@></strong>
                <div class="s4_contents_box2">
                    <span class="s4_contents_view"><@=freeMains.freeContents@></span>
                </div>

                <span class="s4_contents_info">
                                    <span class="s4_info_reply">댓글</span>
                                    <span class="s4_info_count">0</span>
                                    <span class="s4_info_like">좋아요</span>
                                    <span class="s4_info_heart"><i class="far fa-heart"></i></span>
                                    <span class="s4_contents_regdate"><@=freeMains.freeDate@></span>
                                    <span class="s4_info_by">by</span>
                                    <span class="s4_info_writer"></span>&nbsp;
                                    
                                </span>
            </div>

            <div class="s4_contents_img">
                <img class="s4_img_size" src="<@=freeMains.freePicture@>"/>
            </div>
        </a>
    </li>
 
   <@})@>
</script>
<script src="js/jquery.js"></script>
<script src="js/underscore-min.js"></script>
<script src="js/tui-code-snippet.min.js"></script>
<script src="js/tui-time-picker.min.js"></script>
<script src="js/tui-date-picker.min.js"></script>
<script src="js/moment-with-locales.js"></script>
<script>
	
	_.templateSettings = {
		interpolate: /\<\@\=(.+?)\@\>/gim,
		evaluate: /\<\@(.+?)\@\>/gim,
		escape: /\<\@\-(.+?)\@\>/gim
		};

    // 품종 입력 값, 길이 받을 변수

    var kind_lenth;

    //애완동물 종류(개, 고양이)
    var pet_no;
    
    var freetmp = _.template($("#freeSearchTmp").html());
    var tmp = _.template($("#petsTmp").html());
    var pride_tmp =_.template($("#prideTmp").html());
    var kind_tmp = _.template($("#kindTmp").html());
  	var detail_tmp =_.template($("#detailsTmp").html());

  	function petList(){
    $.ajax({
        url:"ajax/mypet.jsp",
        type:"get",
        dataType:"json",
        error: function () {
          
        },
        success:function (json) {
            $("#session3_pet_wrap").prepend(tmp({mypet: json}));
        }
    });
  	};
  	petList();
  
    // 펫 정보 누를시 출력
    $(".menu_pet_information").click(function () {
        $("#session3_pet_wrap").empty();
        $(".pet_input_box").show();
        $("#free_board").empty();
        $(".contents_imgList").empty();
        petList();
    }); // 펫정보 end

    // 펫프라이드
    $(".menu_pet_pride").click(function () {
        $("#session3_pet_wrap").empty();
        $(".pet_input_box").hide();
        $("#free_board").empty();
        $(".contents_imgList").empty();
        $.ajax({
            url:"ajax/prideboard.jsp",
            tye:"get",
            dataType:"json",
            error:function () {
                alert("서버점검중.pride");
            },
            success: function (json) {
                $(".contents_imgList").prepend(pride_tmp({prideboard:json}));
            }

        });
    });// 펫프라이드 end

    //자유 게시판
    $(".menu_pet_freeborad").click(function () {
        $("#session3_pet_wrap").empty();
        $(".pet_input_box").hide();
        $("#free_board").empty();
        $(".contents_imgList").empty();
        $.ajax({
            url : "ajax/freeMains.jsp",
            type:"POST",
            dataType : "json",
            error:function (e) {
                console.log(e.stack);
            },
            success:function (json) {
            	console.log(json);
                $("#free_board").append(freetmp({freeMains:json}));
            }
        });
    })// 자유게시판 end
    
    // 펫 상세 페이지 
    $(document).on("click",".pet_detail_box",function () {
        $("#pet_detail_pop").empty();
        pet_no =$(this).find(".pet_no").text();
        $.ajax({
            url:"ajax/mypetDetail.jsp",
            tye:"post",
            dataType:"json",
            data:{
            	"pet_no" : pet_no 
            },
            error:function () {
                alert("서버점검중.");
            },
            success: function (json) {
                $("#pet_detail_pop").prepend(detail_tmp({mypetDetail:json}));
                }
        		// 
        });
  
        $("#mypage_pop").show();
        $("#pet_detail_pop").show();

        $("html").css("overflow-y","hidden pet_confirm_pop");
    });
   // 펫 상세 페이지 끝
    
   // 펫 수정 페이지

        $(document).on("click",".btn_pet_confirm",function (e) {
            $("#pet_confirm_box").empty();
            $(".pet_pop_header").removeClass("cat_select","dog_select");
            $(".pet_icon").css("opacity","1");
            
            pet_no = $(this).parent().find(".pet_no").text();
          
            $.ajax({
                url:"ajax/mypetUpdate.jsp",
                tye:"post",
                dataType:"json",
                data:{"pet_no":pet_no},
                error:function () {
                    alert("서버점검중.");
                },
                success: function (json) {
                    //수정
                    console.log(json);
                    
                    if(json.petType =='C'){
                    	$("#select_cat").attr("selected","selected");
                    	$(".pet_pop_header").addClass("cat_select");
                    }
                    else{
                    	$("#select_dog").attr("selected","selected");    
                    	$(".pet_pop_header").addClass("_select");
                    }
                    $("#update_pet_name").val(json.petName);
                    $("#update_pet_age").val((moment().format("YYYY")-moment(json.petBirthDay).format("YYYY")+1));
                    $("#update_kind_no").val(json.kindNo);
                    $("#update_pet_kind").val(json.kind); 
                    $("#update_pet_no").val(json.petNo);
              
                    // $(".confirm_input_kind").val({mypet:json[pet_no-1].kind});
                }

            });
            $("#mypage_pop").show();
            $("#pet_confirm_pop").show();

            $("html").css("overflow-y","hidden");

            e.stopPropagation();

        });
   
    
    $("#profile_nickname").click(function () {
        $(".camp").show();
    });

    $(".fa-cat").click(function () {
        $(".fa-dog").fadeOut();
    });

    $(".fa-dog").click(function () {
        $(".fa-cat").fadeOut();
    });

    $(".user_detail").click(function () {
        $("#mypage_pop").show();
        $("#user_pop").show();
        $("html").css("overflow-y","hidden");
    });

    $(document).on("click",".fa-times-circle",function () {
        $("#mypage_pop").hide();
        $("#user_pop").hide();
        $("#pet_confirm_pop").hide();
        $("#pet_input_pop").hide();
        $("#pet_detail_pop").hide();
        $(".pet_kind_input").empty();
        $(".kind_key").val("");
        $(".kind_key2").val("");
        $("html").css("overflow-y","scroll");

    })
    $(document).on("click",".btn_cancel",function () {
        $("#mypage_pop").hide();
        $("#user_pop").hide();
        $("#pet_confirm_pop").hide();
        $("#pet_input_pop").hide();
        $(".pet_kind_input").empty();
        $(".kind_key").val("");
        $(".kind_key2").val("");
        $("html").css("overflow-y","scroll");
    })
    //session2 버튼


    $(".menu_pet_information").click(function () {
        $(".session2_menu").removeClass("click_menu");
        $(".session2_menu").removeClass("click_menu_free");
        $(".menu_text").hide();
        $(this).addClass("click_menu").find(".menu_text").show();
    })

    $(".menu_pet_pride").click(function () {
        $(".session2_menu").removeClass("click_menu");
        $(".session2_menu").removeClass("click_menu_free");
        $(".menu_text").hide();
        $(this).addClass("click_menu").find(".menu_text").show();
    })

    $(".menu_pet_freeborad").click(function () {
        $(".session2_menu").removeClass("click_menu");
        $(".menu_text").hide();
        $(this).addClass("click_menu_free").find(".menu_text").show();
    })

    $(document).on("click",".delete_btn",function (e) {
    	pet_no =$(this).attr("value");
    	$.ajax({
    		url:"ajax/petDelete.jsp",
    		type:"POST",
    		dataType:"json",
    		data:{
    			"pet_no" : pet_no
    		}
    		
    	})
    	location.reload();
    	e.stopPropagation();
    })


    function tags(kind){
        $(".pet_kind_input").addClass("kind_input_setting");
        $.ajax({
            url:"ajax/data.jsp",
            type:"POST",
            dataType:"json",
            data:{
            	"kind" : kind
            },
            error:function (requset, status, error) {
                alert(requset+status+error);
            },
            success:function (json) {
                $(".pet_kind_input").prepend(kind_tmp({data:json}));
            }
        });//ajax() end
    }

    // 품종 ajax
    $(document).on("keyup",".kind_key",function () {
        $(".pet_kind_input").empty();
        var kind = $(".kind_key").val();
        kind_lenth = $(".kind_key").val().length;
        if(kind_lenth >0){
            tags(kind);
        }
        $(".pet_kind_input").removeClass("kind_input_setting");
    });

    $(document).on("keyup",".kind_key2",function () {
        $(".pet_kind_input").empty();
        var kind2 = $(".kind_key2").val();
        kind_lenth = $(".kind_key2").val().length;
        
        if(kind_lenth >0){
            tags(kind2);
        }
        $(".pet_kind_input").removeClass("kind_input_setting");
    });


    var pet_kind;
    $(".pet_kind_input").on("click",".pet_kind_li",function () {
        pet_kind = $(this).text();
        $(".kind_key").val(pet_kind);
        $(".kind_key2").val(pet_kind);
        $(".pet_kind_input").empty();

    })

    $(".pet_input_box").click(function () {

        $("#mypage_pop").show();
        $("#pet_input_pop").show();
        $("html").css("overflow-y","hidden");

    })

    $(".pet_frame_box").click(function () {
        $("#pet_pop_confirm").show();
    })
    $(document).on("click",".pet_male",function () {
        $(".pet_male").addClass("push");
        $(".pet_female").removeClass("push");
    })
    $(document).on("click",".pet_female",function () {
        $(".pet_female").addClass("push");
        $(".pet_male").removeClass("push");
    })

    //펫 상세정보에서 사진 수정
    $(".pet_img").click(function () {
        $("#pet_confirm_file").click();
    })

    $("#pet_pop_input").click(function () {
        $("#pet_confirm_file").click();
    })

    //유저 정보 팝업의 이메일
    $(document).ready(function () {
        $(".back_mail").val("gmail.com");
    })
    $(".select_mail").change(function () {
        mail = $(this).val();
        $(".back_mail").attr("readonly","true");

        if(mail=="direct")
        {
            $(".back_mail").val("");
            $(".back_mail").prop("readonly",false);
        }
        else{
            $(".back_mail").val(mail);
        }
    })

    //펫 등록 아이콘 클릭시 색 변화 색변경
    $(".select_cat_icon").click(function () {
        $(".select_pet_cat").click()

    });
    $(".select_dog_icon").click(function () {
        $(".select_pet_dog").click()

    });
    $(document).on("click",".confirm_cat_icon",function () {
        $(".confirm_pet_cat").click()
        cat_icon()
        }
    )

    $(document).on("click",".confirm_dog_icon",function () {
            $(".confirm_pet_dog").click()
        dog_icon()
        }
    )
    function cat_icon(){
        $(".pet_pop_header").removeClass("dog_select");
        $(".cat_icon").css("opacity","1");
        $(".pet_pop_header").addClass("cat_select");
        $(".dog_icon").css("opacity","0.5");
    };
    function dog_icon(){
        $(".pet_pop_header").removeClass("cat_select");
        $(".cat_icon").css("opacity","0.5");
        $(".pet_pop_header").addClass("dog_select");
        $(".dog_icon").css("opacity","1");
    }
    $(".cat_icon").click(function () {
       cat_icon()
    });

    $(".dog_icon").click(function () {
      dog_icon()
    })
    // data-picker

    var datepicker = new tui.DatePicker('#wrapper', {
        date: new Date(),
        input: {
            element: '#datepicker-input',
            format: 'yyyy-MM-dd'
        },
        language:'ko'
    });

    datepicker.on('change', function() {
        var newDate = datepicker.getDate();

        console.log(newDate);
    });
    // 유저 생년월일
    var datepicker2 = new tui.DatePicker('#wrapper2', {
        date: new Date(<%=cal.get(Calendar.YEAR)%>,<%=cal.get(Calendar.MONTH)%>,<%=cal.get(Calendar.DATE)%>),
        input: {
            element: '#datepicker-input2',
            format: 'yyyy-MM-dd'
        },
        language:'ko'
    });

    datepicker2.on('change', function() {
        var newDate = datepicker2.getDate();

        console.log(newDate);
    });

    //펫 생년월일 수정
    var datepicker4 = new tui.DatePicker('#wrapper4', {
        date: new Date(),
        input: {
            element: '#datepicker-input4',
            format: 'yyyy-MM-dd'
        },
        language:'ko'
    });

    datepicker4.on('change', function() {
        var newDate = datepicker4.getDate();
        console.log(newDate);
    });


    $(window).scroll(function () {
        //스크롤 탑
        var sTop = $(this).scrollTop();

        //브라우저의 높이
        var wTop = $(window).height();

        //문서의 높이
        var dTop = $(document).height();

        if ((dTop-20)<=(wTop + sTop))
        {
            //언더스코어 템플릿을 이용해서
            for(var i =0; i<20; i++){
                $("#bandList").append(tmp());
            }
        }
       
    })

</script>
</body>
</html>