<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head>
<%@ include file="../include/bootstap_collect.jsp"%>
<meta charset="utf-8" />
<title>Atropos - Responsive Multipurpose</title>
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />
<!-- mobile settings -->
<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<script type="text/javascript">
// AST(CSW) : 게시글 수정 페이지
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
	
	// 삭제할 사진들의  pk를 받아주기 위한 배열
	var dePics = new Array();
	// 파일 삭제하기
	$(".dePic").click(function() {
		// 삭제할 파일의 pk를 배열에 담아준다
		dePics.push($(this).prev().prev().val());
		// input hidden 삭제
		$(this).prev().prev().remove();
		// span tag 삭제
		$(this).prev().remove();
		// br tag 삭제
		$(this).next().remove();
		// font tag 삭제
		$(this).remove();
	});
	
	// 취소 버튼 누르면
	$("#resetBtn").click(function() {
		location.href="${path}/snsdetails/updateView.do?spk=" + ${brd.spk}
	});
	
 	// 수정 버튼 누르면
	$("#upBtn").click(function() {
		document.upForm.action="${path}/snsdetails/updateBrd.do?dePics="+dePics;
		document.upForm.submit();
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
</script>
<style>
.col-md-5 { padding-left: 0px; width:260px; }
.files { float:left; }
.addFileDiv 	{ margin-top : 5px; }
.deFile:hover, .dePic:hover { cursor:pointer; }

	#tagLocationBack{
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
	#tagLocation
	{
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
<!-- WRAPPER -->
<div id="wrapper">
	<br />
	<section id="contact" class="container">
		<div class="row">
			<!-- FORM -->
			<div class="col-md-12">
				<h2>게시글 수정</h2>
				<form method="post" name="upForm" enctype="multipart/form-data">
					<!-- 작성자가 누군지 알아야지 저장할수 있기 때문에 mpk 받고 또 넘겨줌 -->
					<input type="hidden" name="mpk" value="${sessionScope.member.mpk}" />
					<input type="hidden" name="spk" value="${brd.spk}" />
					<div class="row">
						<div class="form-group">
							<div class="col-md-6">
								<label>제목 *</label> 
								<input type="text" class="form-control" name="stitle" id="stitle"
								style="width: 505px" value="${brd.stitle}">
								<div class="col-md-5">
								<label>리뷰&나의게시물 *</label>
									<select class="form-control" name="ssort" id="ssort">
										<!-- 리뷰였으면 리뷰로 보여지고 나의 게시물이었으면 나의 게시물로 보여주기 -->
										<c:choose>
											<c:when test="${brd.ssort == 'review'}">
												<option value="review" selected>리뷰</option>
												<option value="mybrd">나의 게시물</option>
											</c:when>
											<c:otherwise>
												<option value="review">리뷰</option>
												<option value="mybrd" selected>나의 게시물</option>
											</c:otherwise>
										</c:choose>
									</select>
								</div>
								<div class="col-md-5">
									<label>태그*</label> 
									<input type="text" class="form-control" name="stag" id="stag">
								</div>
							</div>
							<div class="col-md-4">
								<label id="addFiles">이미지사진 (추가)</label>
								<div id="filesDiv">
									<c:forEach var="pic" items="${fileList}">
										<input type="hidden" value="${pic.sfpk}" /> 
										<span class="files">${pic.sffile}</span>&nbsp;
										<font class="dePic">[X]</font><br>
									</c:forEach>
								</div>
							</div>

						</div>
					</div>

					<div class="row">
						<div class="form-group">
							<div class="col-md-12">
								<label>내용</label>
								<textarea maxlength="5000" rows="10" class="form-control"
									name="scontent" id="scontent">${brd.scontent}</textarea>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<input type="button" class="btn btn-success" id="upBtn" value="수정">
							<input type="button" class="btn btn-primary" id="resetBtn" value="취소">
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
	
</div>  <!--wrapper /div-->	
	
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
						$("#attractionName").append("<option value="+Data[i].atitle+">"+Data[i].atitle+"</option>");
					}
				}
			});
		}
	};
	
	$(function(){
		/* AST : 태그 선택창 눌렀을 때 div 보이게 설정  */
		$("#stag").click(function(){
			//alert('눌름');
			$("#tagLocationBack").fadeIn(800);
			$("#tagLocation").fadeIn(800);
		})
		
		/* AST : 태그 선택창 뒷 배경을 눌렀을 시 종료  */
		$("#tagLocationBack").click(function(){
			$("#tagLocationBack").fadeOut(500);
			$("#tagLocation").fadeOut(500);
		})
		
		/* AST : 태그 선택창 확인을 눌렀을 때 사용  */
		 $("#confirmBtn").click(function(){
			var selectedTag = $("#attractionName option:selected").val();
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
			
		})
		
		$("#cancelBtn").click(function(){
			 $("#tagLocationBack").fadeOut(500);
				$("#tagLocation").fadeOut(500);
		})
	})
	</script>
</div>
<
<!-- /WRAPPER -->
</html>