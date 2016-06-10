<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>                        
			</button>
			<a class="navbar-brand" href="<c:url value="/add_ad"/>"><span class="glyphicon glyphicon-home"></span> Client 1 projet 3 SR03</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">			
			<ul class="nav navbar-nav">
				<li <c:if test="${ !empty param.addAd }">class="active"</c:if> ><a href="<c:url value="/add_ad"/>" title="Vers l'ajout d'annonce">Ajout d'annonce</a></li>
				<li <c:if test="${ !empty param.dropAd }">class="active"</c:if> ><a href="<c:url value="/drop_ad"/>" title="Vers la suppression d'annonce">Suppression d'annonce</a></li>
				<li <c:if test="${ !empty param.modifyAd }">class="active"</c:if> ><a href="<c:url value="#"/>" title="Vers la modification d'annonce">Modification d'annonce</a></li>
			</ul>
		</div>
	</div>
</nav>