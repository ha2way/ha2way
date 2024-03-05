<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu for you</title>
<fieldset>
<center><h1><i>Menu for you</i></h1></center>
</fieldset>
</head>
<body>
 <%  
         String id = request.getParameter("id");
  		 String pwd = request.getParameter("password");
  		
  		String dbid = "hiway";
  		String dbpwd= "hi";
  		if( dbid.equals(id)   &&   dbpwd.equals(pwd) ){
	         
	         session.setAttribute("AUTH_USER_ID",id);
	         session.setAttribute("AUTH_USER_PWD", pwd); //비번->제거

	         String loginId = (String)session.getAttribute("AUTH_USER_ID");
		     String loginPwd = (String)session.getAttribute("AUTH_USER_PWD");
%>
	  <ul>
	  	
	  	<li>★<%=loginId %>★님 주문해주세요</a></li>
	  </ul>
<%	         
  		 }else{
         //id나 비번이 불일치하면 loginForm.jsp로 이동
         //"id나 비번이 불일치"합니다 메세지를 client에게 보내줄 예정
          //3.Model처리
         //request.setAttribute(String 속성명,Object 값);
           request.setAttribute("errMSG","id나 비밀번호를 다시 확인해주세요");
           System.out.println(request.getAttribute("errMSG"));  //콘솔출력
  		  	//out.println( "id나 비번이 불일치"); //loginOk.jsp 브라우저에 출력
         //4.View지정 
         RequestDispatcher dispatcher = request.getRequestDispatcher("logHa.jsp");
         dispatcher.forward(request, response);
 //          response.sendRedirect("loginForm.jsp");
  		 }
  %>
          
  <hr/>
  
  </fieldset>

<center>
	<table border="1">
		<tr>
			<th>coffee</th>
			<td>Americano</td>
			<td> ￦2500</td>
		</tr>
		<tr>
			<th></th>
			<td>Cafe Latte</td>	
			<td>￦3500</td>
		</tr>
	</table>
<table border="1">
		<tr>
			<th>non coffee</th>
			<td>Strawberry Latte</td>
			<td> ￦4200</td>
		</tr>
		<tr>
			<th></th>
			<td>Cookie</td>	
			<td>￦1500</td>
		</tr>
	</table>
	<fieldset><form>
		<ul>
			<li>메뉴 선택: 
			  <input type="radio" name="choicem" id="choicem1" value="m1"/><label for="choicem1">Americano</label>
			  <input type="radio" name="choicem" id="choicem2" value="m2"/><label for="choicem2">Cafe Latte</label>
			  <input type="radio" name="choicem" id="choicem3" value="m3"/><label for="choicem3">Strawberry Latte</label>
			  <input type="radio" name="choicem" id="choicem4" value="m4"/><label for="choicem4">Cookie</label>
			</li>
			<li>Option: 
			  <input type="checkbox" name="chOp" id="chOp1" value="op1">Hot<label for="chOp1"></label>
			  <input type="checkbox" name="chOp" id="chOp2" value="op1">Ice<label for="chOp2"></label>
			  <input type="checkbox" name="chOp" id="chOp3" value="op1">샷추가<label for="chOp3"></label>
			  <input type="checkbox" name="chOp" id="chOp4" value="op1">휘핑추가<label for="chOp4"></label>
			</li>
			<li>수량
			  <input type="number" name="choQty" id="choQty" value="1" max="5" min="1" step="1"/>
			</li>
			<li></li>
			<input type="submit" value="담기" />
 			<input type="reset" value="추가주문" />
		</ul>
	
	
	</form></fieldset>
	<a href="http://localhost:8081/wp/cafeHaway/paymentHa.jsp">
  <input type="image"
   src="http://localhost:8081/wp/imgs/coffeeca.png"
   title="결제페이지이동"
   alt="coffeeca" width="160"/></a><br/>
   <a href="http://localhost:8081/wp/cafeHaway/logHa.jsp"><i>__________________________________www.Cafe Haway for you</i></a>
</center></body>
</html>