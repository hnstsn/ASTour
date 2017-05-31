<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/bootstap_collect.jsp"%>
<title>Insert title here</title>
<style type="text/css">
#cl-dashboard{
   display:none;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
      $("#up").click(function() {
          var rcontent = $("#rcontent").val();
          var rpk = $("#rpk").val();
          var spk = $('#spk').val(); 
          var mname = $("#mname").val();
          $.ajax({
            url : "${path }/snsdetails/update.do", //접근해야할 아이디 
            type : "post", //전송방식
            dataType : "json", //json타입으로 요청
            data : "rcontent="+rcontent+"&rpk="+rpk+"&mname="+mname,
            success: function() {
            	alert("수정되었습니다.");
            }
         });

          opener.parent.location='${path}/snsdetails/contentview.do?spk='+spk+"&mname="+mname; 
          window.close();
      });
});
function f1(){
   window.close();
}
</script>
</head>
<body>
   <form name="uform" class="form-horizontal" method="post">
      <div class="comment">
         <!-- user-avatar -->
         <span class="user-avatar">
         <img style="margin: 2%" class="pull-left media-object" src="${path}/profile/${list.pfile}" width="64" height="64" alt="">
         </span>
         <div class="media-body-1">
            <h4 class="media-heading bold">${list.mname}</h4>
            <h4>
               <fmt:formatDate value="${list.rtime}" pattern="yyyy-MM-dd a HH:mm:ss" />
            </h4>
            <div class="col-md-12"></div>
            <textarea class="form-control input-lg" id="rcontent"
               name="rcontent" rows="5">${list.rcontent}</textarea>
         </div>

      </div>
      <!-- COMMENT FORM -->
      <div class="row">
         <!-- comment -->
         <br />
         <div class="col-md-12">
            <p align="right">
               <input type="hidden" name="rpk" id="rpk" value="${rpk}">
               <input type="hidden" name="spk" id="spk" value="${spk}">
               <input type="hidden" name="mname" id="mname" value="${mname}">
               <input type="button" id="up" value="수정" class="btn btn-success">
               <button onclick="f1()" class="btn btn-success">취소</button>
            </p>
            <p align="right"></p>
         </div>
      </div>
   </form>
   
</body>
</html>