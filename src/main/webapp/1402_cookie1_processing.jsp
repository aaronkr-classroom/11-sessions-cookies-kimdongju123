<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
   <head>
   <meta charset="UTF-8">
   <title>Cookie</title>
   </head>
   <body>
   <%
   String user_id = request.getParameter("id");
   String user_pw = request.getParameter("pw");
   String user_ck = request.getParameter("cookie");
   
   if(user_id.equals("admin") && user_pw.equals("1234")){
	   Cookie cookie_id = new Cookie("userID", user_id);
	   Cookie cookie_pw = new Cookie("userPW", user_pw);
	   Cookie cookie_ck = new Cookie("userCK", user_ck);
	   
	   response.addCookie(cookie_id);
	   response.addCookie(cookie_pw);
	   response.addCookie(cookie_ck);

	   response.sendRedirect("1403_cookie1_results.jsp");
	   out.println("쿠키 설정이 성공했습니다!<br>");
	   out.println(user_id + "님 환영합니다");
	   
   }else{
	   out.println("쿠키 생성이 실패했습니다.");
   }
   %>
   
   </body>
   </html>