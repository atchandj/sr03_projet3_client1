<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Ajout d'annonce</title>
		<script src="<c:url value="/js/jquery-2.2.2.min.js"/>"></script>
		<link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
		<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
		<link href="<c:url value="/css/styles.css"/>" rel="stylesheet">
	</head>
	<body>
		<%@ include file="/WEB-INF/header.jsp" %>   
		<jsp:include page="/WEB-INF/menu.jsp" >
			<jsp:param name="formsManagement" value="formsManagement" />
		</jsp:include>
		<div class="container-fluid">
			<p>Yo !</p>
	    </div>
	    <%@ include file="/WEB-INF/footer.jsp" %>
	</body>
</html>