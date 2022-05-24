<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>manager_paging.jsp</title>



</head>
<body>
	<!-- 페이징 !!--------------------------------------------------------------------------------------------------->
 
	<ul class="pagination">
		<c:set var="P" value="${param.P}" />
		<c:set var="p" value="1" />
		<c:if test="${P != null}">
			<fmt:parseNumber var="p" type="number" value="${P}" />
		</c:if>
		<fmt:parseNumber var="pNum" value="${(recordsCnt+perpage-1)/perpage}"
			integerOnly="true" />
		<fmt:parseNumber var="Plast" value="${(pNum+9)/10}" integerOnly="true" />
		<c:set var="page" value="1"></c:set>
		<c:if test="${param.page != null}">
			<fmt:parseNumber var="page" type="number" value="${param.page}" />
		</c:if>
		
		<c:choose>
			<c:when test="${pNum<=10}"> 
				<c:choose>
					<c:when test="${page==1}">
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=1&page=${page}" id="previous">Previous</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=1&page=${page-1}" id="previous">Previous</a></li>
					</c:otherwise>
				</c:choose>
				<c:forEach var="i" begin="1" end="${pNum}">
					<li class="page-item"><a class="page-link"
						href="${jspFile }P=${p}&page=${i}">${i}</a></li>
				</c:forEach>
				<c:choose>
					
					<c:when test="${page==pNum}">
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=1&page=${page}" id="next">Next</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=1&page=${page+1}" id="next">Next</a></li>
					</c:otherwise>
				</c:choose>
			</c:when>
			
			<c:when test="${pNum>10}">
				<c:choose>
					<c:when test="${p==1}">
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=1&page=1" id="previous"><<</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=${p-1}&page=${10*p-19}"
							id="previous"><<</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${page%10==1}">
						<c:choose>
							<c:when test="${page==1 }">
								<li class="page-item"><a class="page-link"
									href="${jspFile }P=1&page=1" id="previous">Previous</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="${jspFile }P=${p-1}&page=${page-1}"
									id="previous">Previous</a></li>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=${p}&page=${page-1}" id="previous">Previous</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${p<Plast }">
						<c:forEach var="i" begin="${p*10-9 }" end="${p*10 }">
							<li class="page-item"><a class="page-link"
								href="${jspFile }P=${p }&page=${i }">${i }</a></li>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach var="i" begin="${p*10-9 }" end="${pNum}">
							<li class="page-item"><a class="page-link"
								href="${jspFile }P=${p }&page=${i }">${i }</a></li>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${page==pNum }">
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=${p}&page=${pNum}" id="next">Next</a></li>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${page%10==0}">
								<li class="page-item"><a class="page-link"
									href="${jspFile }P=${p+1}&page=${page+1}" id="next">Next</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="${jspFile }P=${p}&page=${page+1}" id="next">Next</a></li>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${p<Plast}">
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=${p+1 }&page=${10*p+1}" id="next">>></a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=${Plast}&page=${pNum}" id="next">>></a></li>
					</c:otherwise>
				</c:choose>
			</c:when>
		</c:choose>

	</ul>
 
</body>
</html>