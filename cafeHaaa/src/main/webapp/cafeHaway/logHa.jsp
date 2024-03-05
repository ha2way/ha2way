<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CafeHa</title>
<fieldset>
<h1><i>Cafe Haway</i></h1>

<a href="logHa.jsp"><i>__________________________________www.Cafe Haway for you</i></a>
</fieldset>

</head>

<body>
<% 
	/*서버에서는 아래와 같이 Model처리하였다
	  3. Model처리
	  request.setAttribute(String 속성명,Object 값);
      request.setAttribute("errMSG","id나 비번이 불일치합니다");*/
	  //서버로부터 받은 로그인 실패원인 메세지를 로그인실패했을때만 출력
    String model = (String)request.getAttribute("errMSG");
	if(model != null){
	 out.println("CafeHa를 방문해주신 손님 감사합니다 -" + model+"<hr/>");}
	 %>
<fieldset>
	<legend>log in</legend>
	<form name="LoginFrm" id="loginFrm" action="menuForYou.jsp" method="get"/> 
	<div>
	 ID   :   <input type="text" name="id" id="id" required="required" placeholder="hiway"/><br/>
	</div>
	<div>
	pw : <input type="password" name="password" id="password" required="required" placeholder="hi"/>
	</div>
	<input type="submit" value="로그인"/>
	
	
	</form>
	
	
</fieldset>
<fieldset>
	<ul>
	
	sign up for you - <a href = "http://localhost:8081/wp/cafeHaway/signUp.jsp" target="_blank"><input type="button" value="신규가입" onclick="alert('환영합니다! - 신규가입 페이지로 이동합니다');" /></a>
	<li><ins><sub><h5>신규회원 가입시 아메리카노 무료증정 이벤트 진행중 입니다</h5></sub></ins></li>
	
	</ul>
</fieldset>
</body>
</html>