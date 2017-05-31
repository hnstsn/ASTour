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
	
});
</script>
<style>
.col-md-5 { padding-left: 0px; width:260px; }
.files { float:left; }
.addFileDiv 	{ margin-top : 5px; }
.deFile:hover, .dePic:hover { cursor:pointer; }
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

</div>
<!-- /WRAPPER -->
</html>