<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<fieldset><center>
<h1><i>Payment</i></h1>
</center></fieldset>
</head>
<body>
<fieldset><center>
	<ol>
	<li>
	<input type="radio" name="paymeny" id="pay1" value="p1"/><label for="pay1">현금결제</label> 
	<input type="radio" name="paymeny" id="pay2" value="p2"/><label for="pay2">카드결제</label>
	<input type="radio" name="paymeny" id="pay3" value="p3"/><label for="pay3">간편결제</label> 
	</li>
	<li>카드 및 간편결제 선택 : 
	<select name="cppay" id="cppay">
		<option value="0">선택</option>
		<option value="kbcd">국민카드</option>
		<option value="wori">우리카드</option>
		<option value="kaka">카카오페이</option>
		<option value="naver">네이버페이</option>
		<option value="ssp">삼성페이</option>
	</select>
	</li>
	<li> 현금영수증 발행:
	<input type="radio" name="cash" id="cash1" value="y" checked="checked"/><label for="cash1">예</label>
	<input type="radio" name="cash" id="cash2" value="y"/><label for="cash2">아니요</label>
	</li>
	<li> 핸드폰 번호 입력:
	<input type="tel" name="tel" id="tel" autofocus="autofocus"  placeholder="핸드폰번호 입력"/>
	</li>
	<li>픽업예약 요청(시간선택):
	<input type="time" name="t1" id="t1"/>
	</li>
	</ol>
    <button type="button" onclick="location.href='enjoyYourSelf.jsp'">결제완료</button>
</center>
</fieldset>

<center><a href="http://localhost:8081/wp/cafeHaway/logHa.jsp"><i>__________________________________www.Cafe Haway for you</i></a>
</center></body>
</html>