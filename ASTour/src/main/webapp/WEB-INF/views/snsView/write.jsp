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
	
	//AST : submit을 막는다.


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
				<form id="writeForm" action="${path}/sns/insert.do" method="post" enctype="multipart/form-data">
					<!-- 작성자가 누군지 알아야지 저장할수 있기 때문에 mpk 받고 또 넘겨줌 -->
					<input type="hidden" name="mpk" value="${mpk}" />
					<div class="row">
						<div class="form-group">
							<div class="col-md-6">
								<label>제목 *</label> 
								<input type="text" class="form-control"name="stitle" id="stitle"
								style="width: 505px">
								<div class="col-md-5">
								<label>리뷰&나의게시물 *</label> 
									<select class="form-control" name="ssort" id="ssort">
										<option value="review">리뷰</option>
										<option value="mybrd">나의게시물</option>
									</select>
								</div>
								<div class="col-md-5">
									<label>태그*</label> 
									<!-- <input type="text" class="form-control"  name="stag" id="stag"> -->
									<select class="form-control"  name="stag" id="stag">
										<option>선택하세요</option>
										<c:forEach var="list" items="${list}">
											<option>${list.atitle}</option>	
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<label id="addFiles">이미지사진 (추가)</label>
								<div id="filesDiv">
									<input type="file" name="files" class="files">
									<font class="deFile">[X]</font><br>
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
							<input type="submit" class="btn btn-primary btn-lg" value="확인">
						</div>
					</div>

				</form>

			</div>
			<!-- /FORM -->

		</div>

	</section>

</div>

<script>
/*AST : form 태그가 적절한지 판단  */
$("#writeForm").submit(function() {
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
		alert('태그가 올바르지 않습니다')
		return false;
	}
		
});
</script>

</body>

<!-- /WRAPPER -->
</html>