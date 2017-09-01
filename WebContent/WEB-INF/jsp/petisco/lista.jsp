<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<tag:template title="Lista de Petisco">
<h2>Listagem de Petiscos</h2>

<table class="table table-hover">
	<tr>
		<th>Id</th>
		<th>Nome</th>
		<th>Valor</th>
	</tr>
	<c:forEach items="${lista}" var="p">
		<tr>
			<td>${p.codigo}</td>
			<td>${p.nome}</td>
			<td>${p.valor}</td>
		</tr>
	</c:forEach>
</table>
</tag:template>

