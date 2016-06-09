<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>                        
			</button>
			<a class="navbar-brand" href="<c:url value="#"/>">Client 1 projet 3 SR03</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">			
			<ul class="nav navbar-nav">
				<li <c:if test="${ !empty param.superUserHome }">class="active"</c:if> ><a href="<c:url value="#"/>" title="Vers l'ajout d'annonce"><span class="glyphicon glyphicon-home"></span> Ajout d'annonce</a></li>
				<li <c:if test="${ !empty param.usersManagement }">class="active"</c:if> ><a href="<c:url value="#"/>" title="Vers la suppression d'annonce"><span class="glyphicon glyphicon-user"></span> Suppression d'annonce</a></li>
				<li <c:if test="${ !empty param.formsManagement }">class="active"</c:if> ><a href="<c:url value="#"/>" title="Vers la modification d'annonce"><span class="glyphicon glyphicon-file"></span> Modification d'annonce</a></li>
			</ul>
		</div>
	</div>
</nav>