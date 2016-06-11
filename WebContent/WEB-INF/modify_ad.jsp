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
										<input list="oldAdsNames" name="oldAdName" class="form-control" placeholder="Ancien nom de l'annonce" autofocus>
										<datalist id="oldAdsNames">
											<c:if test="${ !empty yearBookBean }">
												<c:forEach var="ad" items="${ yearBookBean.ads }" varStatus="status">
													<option value="<c:out value="${ ad.name }"/>">
												</c:forEach>
											</c:if>
										</datalist>
									</div>
									<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
										<label class="control-label" for="newAdName">Nouveau nom de l'annonce :</label>
										<input type="text" id="newAdName" class="form-control" placeholder="Nouveau nom de l'annonce" name="newAdName" value="<c:out value=""/>" autofocus/>
									</div>
									<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
										<label class="control-label" for="newPhone">Nouveau téléphone :</label>
										<input type="tel" id="newPhone" class="form-control" placeholder="Nouveau téléphone (XXXXXXXXXX)" name="newPhone" pattern="[0-9]{10}" value="<c:out value=""/>" autofocus/>
									</div>
								</fieldset>
								<fieldset class="form-group">
									<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
										<label class="control-label" for="oldStreet">Ancienne rue :</label>
										<input list=oldStreetsNames name="oldStreet" class="form-control" placeholder="Ancienne rue" autofocus>
										<datalist id="oldStreetsNames">
											<c:if test="${ !empty oldStreetsNames }">
												<c:forEach var="oldStreetName" items="${ oldStreetsNames }" varStatus="status">
													<option value="<c:out value="${ oldStreetName }"/>">
												</c:forEach>
											</c:if>
										</datalist>
									</div>
	
									<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
										<label class="control-label" for="oldTown">Ancienne ville :</label>
										<input list=oldTownsNames name="oldTown" class="form-control" placeholder="Ancienne ville" autofocus>
										<datalist id="oldTownsNames">
											<c:if test="${ !empty oldTownsNames }">
												<c:forEach var="oldTownName" items="${ oldTownsNames }" varStatus="status">
													<option value="<c:out value="${ oldTownName }"/>">
												</c:forEach>
											</c:if>
										</datalist>
									</div>
									<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
										<label class="control-label" for="oldPostCode">Ancien code postal :</label>
										<input list=oldPostCodes name="oldPostCode" class="form-control" placeholder="Ancien code postal (XXXXX)" pattern="[0-9]{5}" autofocus>
										<datalist id=oldPostCodes>
											<c:if test="${ !empty oldPostCodes }">
												<c:forEach var="oldPostCode" items="${ oldPostCodes }" varStatus="status">
													<option value="<c:out value="${ oldPostCode }"/>">
												</c:forEach>
											</c:if>
										</datalist>								
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
										<input type="text" id="newPostCode" class="form-control" placeholder="Nouveau code postal (XXXXX)" name="newPostCode" pattern="[0-9]{5}"  value="<c:out value=""/>" autofocus/>
									</div>
								</fieldset>
								<fieldset class="form-group">
									<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
										<label class="control-label" for="oldCategory">Ancienne catégorie :</label>
										<input list=oldCategoriesNames name="oldCategory" class="form-control" placeholder="Ancienne catégorie" autofocus>
										<datalist id="oldCategoriesNames">
											<c:if test="${ !empty oldCategoriesNames }">
												<c:forEach var="oldCategoryName" items="${ oldCategoriesNames }" varStatus="status">
													<option value="<c:out value="${ oldCategoryName }"/>">
												</c:forEach>
											</c:if>
										</datalist>									
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
							  	    <div class="alert alert-danger" role="alert"> 
										<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
										<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
										<span class="sr-only">Error: </span><c:out value="${ errorMessage }" />
									</div>
								</c:if>
								
								<c:if test="${ !empty successMessage }">
							  	    <div class="alert alert-success" role="alert"> 
										<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
										<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
										<span class="sr-only">Success: </span><c:out value="${ successMessage }" />
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