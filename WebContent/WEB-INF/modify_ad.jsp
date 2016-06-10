<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Modification d'annonce</title>
		<script src="<c:url value="/js/jquery-2.2.2.min.js"/>"></script>
		<link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
		<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
		<link href="<c:url value="/css/styles.css"/>" rel="stylesheet">
	</head>
	<body>
		<%@ include file="/WEB-INF/header.jsp" %>   
		<jsp:include page="/WEB-INF/menu.jsp" >
			<jsp:param name="modifyAd" value="modifyAd" />
		</jsp:include>
		<div class="container-fluid">
			<form method="post" action="<c:url value="/modify_ad"/>">
				<div class="row">
					<div class="col-md-4 col-lg-offset-4 " >
						<div class="panel panel-default">
							<div class="panel-heading">
								Modification d'annonce
							</div>
							
							<div class="panel-body">
								<fieldset class="form-group">
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="oldAdName">Ancien nom de l'annonce :</label>
									<input type="text" id="oldAdName" class="form-control" placeholder="Ancien nom de l'annonce" name="oldAdName" value="<c:out value=""/>" autofocus/>
								</div>
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="newAdName">Nouveau nom de l'annonce :</label>
									<input type="text" id="newAdName" class="form-control" placeholder="Nouveau nom de l'annonce" name="newAdName" value="<c:out value=""/>" autofocus/>
								</div>
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="newPhone">Nouveau téléphone :</label>
									<input type="text" id="newPhone" class="form-control" placeholder="Nouveau téléphone" name="newPhone" value="<c:out value=""/>" autofocus/>
								</div>
								</fieldset>
								<fieldset class="form-group">
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="oldStreet">Ancienne rue :</label>
									<input type="text" id="oldStreet" class="form-control" placeholder="Ancienne rue" name="oldStreet" value="<c:out value=""/>" autofocus/>
								</div>
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="oldTown">Ancienne ville :</label>
									<input type="text" id="oldTown" class="form-control" placeholder="Ancienne ville" name="oldTown" value="<c:out value=""/>" autofocus/>
								</div>
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="oldPostCode">Ancien code postal :</label>
									<input type="text" id="oldPostCode" class="form-control" placeholder="Ancien code postal" name="oldPostCode" value="<c:out value=""/>" autofocus/>
								</div>
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="newStreet">Nouvelle rue :</label>
									<input type="text" id="newStreet" class="form-control" placeholder="Nouvelle rue" name="newStreet" value="<c:out value=""/>" autofocus/>
								</div>
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="newTown">Nouvelle ville :</label>
									<input type="text" id="newTown" class="form-control" placeholder="Nouvelle ville" name="newTown" value="<c:out value=""/>" autofocus/>
								</div>
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="newPostCode">Nouveau code postal :</label>
									<input type="text" id="newPostCode" class="form-control" placeholder="Nouveau code postal" name="newPostCode" value="<c:out value=""/>" autofocus/>
								</div>
								</fieldset>
								<fieldset class="form-group">
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="oldCategory">Ancienne catégorie :</label>
									<input type="text" id="oldCategory" class="form-control" placeholder="Ancienne catégorie" name="oldCategory" value="<c:out value=""/>" autofocus/>
								</div>
								<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
									<label class="control-label" for="newCategory">Nouvelle catégorie :</label>
									<input type="text" id="newCategory" class="form-control" placeholder="Nouvelle catégorie" name="newCategory" value="<c:out value="${ answer.value }"/>" autofocus/>
								</div>
								</fieldset>
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