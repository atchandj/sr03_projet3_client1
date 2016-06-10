<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Suppression d'annonce</title>
		<script src="<c:url value="/js/jquery-2.2.2.min.js"/>"></script>
		<link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
		<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
		<link href="<c:url value="/css/styles.css"/>" rel="stylesheet">
	</head>
	<body>
		<%@ include file="/WEB-INF/header.jsp" %>   
		<jsp:include page="/WEB-INF/menu.jsp" >
			<jsp:param name="dropAd" value="dropAd" />
		</jsp:include>
		<div class="container-fluid">
			<form method="post" action="<c:url value="/drop_ad"/>">
				<div class="row">
					<div class="col-md-4 col-lg-offset-4 " >
						<div class="panel panel-default">
							<div class="panel-heading">
								Suppression d'annonce
							</div>
							<div class="panel-body">
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="adName">Nom de l'annonce :</label>
									<input type="text" id="adName" class="form-control" placeholder="Nom de l'annonce" name="adName" value="<c:out value=""/>" autofocus required/>
								</div>
								<input type="hidden" name="paction" value="<c:out value="${ paction }"/>" />
								<input type="hidden" name="year_book" value="<c:out value="${ yearBook }"/>" />
								<input type="submit" class="btn btn-default" value="Envoyer"/>
								<c:if test="${ !empty errorMessage }">
							  	    <div id="subErrorMsg" class="alert alert-danger" role="alert"> 
										<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
										<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
										<span class="sr-only">Error: </span><c:out value="${ errorMessage }" />
									</div>
								</c:if>						
							</div>
						</div>
					</div>
				</div>
			</form>
	    </div>
	    <%@ include file="/WEB-INF/footer.jsp" %>
	</body>
</html>