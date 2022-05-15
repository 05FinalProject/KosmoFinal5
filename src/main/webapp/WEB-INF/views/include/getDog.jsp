<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>mybatis: ${ getDog.count }</td>
		</tr>
		
		<tr>
			
			<td>jpa</td>
			<td>${ getDogInfo.dog_kind }</td>
			<td>${ getDogInfo.dog_local }</td>
			<td>${ getDogInfo.dog_height }</td>
			<td>${ getDogInfo.dog_weight }</td>
			<td>${ getDogInfo.dog_information }</td>
			<td>${ getDogInfo.dog_image }</td>
		</tr>
	</table>
	
	
	
	
</body>
</html>