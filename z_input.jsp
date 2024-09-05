<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.sql.*" %>
   <%@ include file="layout/db_connect.jsp" %>
   
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <link rel="stylesheet" type="text/css" href="css/style.css?ver=1.1.1">
   <script type="text/javascript">
   function checkValue() {
      var cv = document.data;
      
      if(!cv.custname.value) {
         alert("회원번호를 입력하세요.");
         cv.custname.focus();
         return false;
      } else if(isNaN(cv.custno.value)) {
            alert("회원번호는 숫자만 입력해야 합니다.");
            cv.custname.focus();
            return false;
      }
   }
   </script>
   <title>쇼핑몰 회원관리</title>
</head>
<body>
   <header>
      <jsp:include page="layout/header.jsp"></jsp:include>
   </header>
   <nav>
      <jsp:include page="layout/nav.jsp"></jsp:include>
   </nav>
   
   <main id="section">
      <h3 class="title">회원목록조회/수정</h3>
      <form name="data" action="z_inquiry.jsp" method="post" onsubmit="return checkValue()">
      <table class="table_line">
         <tr>
            <th>회원번호입력</th>
            <td><input type="text" name="custno" size="10" autofocus="autofocus"></td>
         </tr>
         <tr>
            <td colspan="2" align="center">
               <input type="submit" value="조회">
               <input type="reset" value="취소">
               <input type="button" value="회원목록조회/수정" onclick="location.href='member_list.jsp'">
            </td>
         </tr>
      </table>
      
      </form>
   </main>
   
      <footer>
         <jsp:include page="layout/footer.jsp"></jsp:include>
      </footer>
</body>
</html>
