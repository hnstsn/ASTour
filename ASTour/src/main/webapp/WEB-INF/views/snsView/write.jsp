<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <!-- AST : EL 식의 사이즈를 알기위해 추가했다!  -->
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head>
<!-- mobile settings -->
<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<%@ include file="../include/bootstap_collect.jsp"%>
<meta charset="utf-8" />
<title>Atropos - Responsive Multipurpose</title>
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />
<script>
//AST(CSW) : 게시글 작성

//alert('${fn:length(list)} ');


$(document).ready(function() {
	
	// 파일 추가 누르면
	$("#addFiles").click(function() {
		var add = "<input type='file' name='files' class='files'><font class='deFile'>[X]</font><br>";
		$("#filesDiv").append(add);
		
		// 파일 삭제하기
		$(".deFile").click(function() {
			// input tag 삭제
			$(this).prev().remove();
			// br tag 삭제
			$(this).next().remove();
			// font tag 삭제
			$(this).remove();
		});
	});
	
	// 초기 파일 삭제할 수 있게
	$("#delFile").click(function() {
		// input tag 삭제
		$(this).prev().remove();
		// br tag 삭제
		$(this).next().remove();
		// font tag 삭제
		$(this).remove();
	});
	
	// 확인 버튼을 누르면 - 유효성 검사
	$("#submitBtn").click(function() {
		if ($("#stitle").val() == '') {
			alert("제목을 입력하세요");
			$("#stitle").focus();
			return false;
		} else if ($("#stag").val() == '') {
			alert("태그를 선택하세요");
			$("#stag").focus();
			return false;
		} else if ($("#scontent").val() == '') {
			alert("내용을 입력하세요");
			$("#scontent").focus();
			return false;
		// 충족했을 경우 submit
		} else {
			$("#writeForm").attr("action", "${path}/sns/insert.do");
			$("#writeForm").submit();
		}
	});
	
	
	// AST: 선택한 지역의 세부지역select를 바꿉니다
	$("#siSelect").change(function(){
		sisi();
	});
	
	$("#gunSelect").change(function (){
		var name1 = $("#siSelect option:selected").val();
		var name2 = $("#gunSelect option:selected").val();
		$("#attractionName").html("<option>"+"선택하세요!"+"</option>");
		$.ajax({
			url:"${path}/searchLocation",
			type : "post",
			data : {"agu" : name2},
			dataType : 'json',
			success : function(Data){
				if(name2=="선택하세요!"){
					sisi();
				}else{
					for(var i=0; i<Data.length; i++){
						$("#attractionName").append("<option value="+Data[i].atitle+">"+Data[i].atitle+"</option>");
					}
				}
			}
		});
	});
});



/* $(function(){
    var autocomplete_text = ["자동완성기능","Autocomplete","개발로짜","국이"];
         $("#stag").autocomplete({
            source: autocomplete_text
         });
}) */
</script>
<style>
.col-md-5 { padding-left: 0px; width:260px; }
.files { float:left; }
.addFileDiv 	{ margin-top : 5px; }
.deFile:hover { cursor:pointer; }
 html,body { margin: 0; padding: 0; }
 body{ /* background-color: aquamarine; */ position: relative; }
#tagLocationBack {
	 top: 0;
     left: 0;
     right: 0;
     bottom: 0;
     margin: auto;
     padding: auto;
     z-index: 1;
     background:rgba(0,0,0,0.8);
     width: 100%;
     height: 100%;
     display: none;
     position: absolute;
     text-align: center;
}

#tagLocation {
	 position: absolute;
     top: 0;
     left: 0;
     right: 0;
     bottom: 0;
     margin: auto;
     padding: auto;
     z-index: 3;
     width: 600px;
     height: 400px;
     background-color:white; 
     display: none;
}
</style>
</head>
<body>

<!-- WRAPPER -->
<div id="wrapper">
	<br />
	<section id="contact" class="container">
		<div class="row">
			<!-- FORM -->
			<div class="col-md-12">
				<h2>글쓰기</h2>
				<form id="writeForm" method="post" enctype="multipart/form-data">
					<!-- 작성자가 누군지 알아야지 저장할수 있기 때문에 mpk 받고 또 넘겨줌 -->
					<input type="hidden" name="mpk" value="${mpk}" />
					<div class="row">
						<div class="form-group">
							<div class="col-md-6">
								<label>제목 *</label> 
								<input type="text" class="form-control" name="stitle" id="stitle" style="width: 505px">
								<div class="col-md-5">
								<label>리뷰&나의게시물 *</label> 
									<select class="form-control" name="ssort" id="ssort">
										<option value="review">리뷰</option>
										<option value="mybrd">나의게시물</option>
									</select>
								</div>
								<div class="col-md-5">
									<label>태그*</label> 
									<input type="text" class="form-control" name="stag" id="stag" />
								</div>
							</div>
							<div class="col-md-4">
								<label id="addFiles">이미지사진 (추가)</label>
								<div id="filesDiv">
									<input type="file" name="files" class="files">
									<font class="deFile" id="delFile">[X]</font><br>
								</div>
							</div>

						</div>
					</div>

					<div class="row">
						<div class="form-group">
							<div class="col-md-12">
								<label>내용</label>
								<textarea maxlength="5000" rows="10" class="form-control"
									name="scontent" id="scontent"></textarea>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<input type="button" class="btn btn-primary btn-lg" id="submitBtn" value="확인">
						</div>
					</div>

				</form>

			</div>
			<!-- /FORM -->

		</div>

	</section>
	
<!--AST : 태그용 선택창  -->
	<div id="tagLocationBack">
	<!--검은뒷배경 -->
	</div> 
	<div id="tagLocation">
			 <section style="margin-top: 30px;"> <!-- <section class="container re-filterbox no-top" style="margin-top: 30px;"> -->
         <!-- add "styleBackground" class for colored box -->

         <div> <!-- <div id="re-filter"> -->
            <div><!-- <div class="row"> -->
               <div>

                  <div class="col-md-6 col-sm-12 col-xs-12">
                     <label>지역</label> 
	                     <select id="siSelect" class="form-control" name="re_location">
	                        <option>선택하세요</option>
	                        <option value="기타">기타(직접입력)</option>
	                        <option value="서울">서울</option>
	                        <option value="부산">부산</option>
	                        <option value="대구">대구</option>
	                        <option value="인천">인천</option>
	                        <option value="광주">광주</option>
	                        <option value="대전">대전</option>
	                        <option value="울산">울산</option>
	                        <option value="세종">세종</option>
	                        <option value="강원">강원</option>
	                        <option value="경기">경기</option>
	                        <option value="경남">경남</option>
	                        <option value="경북">경북</option>
	                        <option value="전남">전남</option>
	                        <option value="전북">전북</option>
	                        <option value="제주">제주</option>
	                        <option value="충청남도">충남</option>
	                        <option value="충청북도">충북</option>
	                     </select>
                  </div>
                  
                  <div class="col-md-6 col-sm-12 col-xs-12">
                     <label>지역세부</label> 
	                     <select id="gunSelect" class="form-control" name="re_type">
	                     	<option >선택전</option>
	                     </select>
                  </div>
                  </div>
                  </div>
                  <div><!-- <div class="row" > -->
                  <div class="col-md-8 col-sm-12 col-xs-12" >
                     <label>이름</label>
                     <select id="attractionName" class="form-control" name="re_status">
                        <option selected>선택전</option>
                     </select>
                  </div>
                  
                  <div class="col-md-8 col-sm-12 col-xs-12" >
                     <label>직접입력</label>
                     <input id="tagSelfInput" type="text" class="form-control" disabled="disabled" />
                  </div>
               </div>

            <div><!-- <div class="row"> -->
               <div >

                  <div class="col-md-6 col-sm-8 col-xs-12">
                  <label>&nbsp;</label>
                     <button id = "confirmBtn" class="btn btn-primary fullwidth">확인</button>
                  </div>
                  
                  <div class="col-md-6 col-sm-8 col-xs-12">
                     <label>&nbsp;</label>
                     <button id = "cancelBtn" class="btn btn-primary fullwidth">취소</button>
                  </div>
               </div>
            </div>

         </div>


      </section>
	</div>
	
</div>

<script>
function sisi(){
	var name = $("#siSelect option:selected").val();
	
	// AST : 지역이바뀌니 초기화
	$("#gunSelect").attr("disabled",false);
	$("#attractionName").attr("disabled",false);
	$("#gunSelect").html("<option>"+"선택하세요!"+"</option>");
	$("#attractionName").html("<option>"+"선택하세요!"+"</option>");
	$("#tagSelfInput").val("");
	$("#tagSelfInput").attr("disabled",true);
	if(name=="기타"){
		$("#tagSelfInput").attr("disabled",false);
		$("#gunSelect").attr("disabled",true);
		$("#gunSelect").val("");
		$("#attractionName").attr("disabled",true);
		$("#attractionName").val("");
	}else{
		$.ajax({
			url:"${path}/searchLocation",
			type : "post",
			data : {"acity": name},
			dataType : 'json',
			success : function(Data){
				
				for(var i=0; i<Data.length; i++){
					var dupCheck=true;
					var count=i+1;
					while(count<Data.length){
						
						if(Data[i].agu == Data[count++].agu){
							dupCheck = false;
							break;
						}
					}
					if(dupCheck){
						$("#gunSelect").append("<option value="+Data[i].agu+">"+Data[i].agu+"</option>");
					}
				}
				for(var i=0; i<Data.length; i++){
					$("#attractionName").append("<option value=\""+Data[i].atitle+"\">"+Data[i].atitle+"</option>");
				}
			}
		});
	}
};
//AST : form 태그가 적절한지 판단 -(안씀?) 
/* $("#writeForm").submit(function() {
	var tag_text = $("#stag").val();
	//alert("태그"+tag_text);
	var check = false;
	
	$.ajax({
		url:"${path}/allLocation",
		type:"post",
		dataType:'json',
		async: false,
		success:function(data){
			console.log(data);
			var listSize = data.length;
			
			for(var i=0; i<listSize; i++){
				var eachData=data[i];
				if(eachData.atitle==(tag_text)){
					check = true;
				}
			}
		}
	});
	//alert(check);
	if(check){
		return true;
	}else{
		//AST : submit을 막는다.
		alert('태그명이 올바르지 않습니다')
		return false;
	}
}); */

$(function(){
	/* AST : 태그 선택창 눌렀을 때 div 보이게 설정  */
	$("#stag").click(function(){
		//alert('눌름');
		$("#tagLocationBack").fadeIn(800);
		$("#tagLocation").fadeIn(800);
	});
	
	/* AST : 태그 선택창 뒷 배경을 눌렀을 시 종료  */
	$("#tagLocationBack").click(function(){
		$("#tagLocationBack").fadeOut(500);
		$("#tagLocation").fadeOut(500);
	});
	
	/* AST : 태그 선택창 확인을 눌렀을 때 사용  */
	 $("#confirmBtn").click(function(){
		var selectedTag = $("#attractionName option:selected").text();
		var selfInput = $("#tagSelfInput").val();
		if(selfInput!=""){
			$("#tagLocationBack").fadeOut(500);
			$("#tagLocation").fadeOut(500);
			$("#stag").val(selfInput);
			$("#tagSelfInput").val("");
		}else if(selectedTag == "선택하세요!" || selectedTag == "선택전"){
			alert('다시 선택하세요');
		}else{
			$("#tagLocationBack").fadeOut(500);
			$("#tagLocation").fadeOut(500);
			$("#stag").val(selectedTag);
		}
		
	});
	
	$("#cancelBtn").click(function(){
		 $("#tagLocationBack").fadeOut(500);
			$("#tagLocation").fadeOut(500);
	});
})
</script>

</body>

<!-- /WRAPPER -->
</html>