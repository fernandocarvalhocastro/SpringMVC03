<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>


<tag:template title="Cadastro de Petisco">

<c:if test="${msg!=null}">
	<div class="alert alert-info">
		${msg}
	</div>
</c:if>
<h2>Cadastro de Petisco</h2>
	<form method="POST" action="cadastrar">
		<div class="form-group">
			<label for="id-nome">Nome: </label>
			<input type="text" name="nome" id="id-nome" class="form-control"/>
		</div>
		<div class="form-group">
			<label for="id-valor">Valor: </label>
			<input type="text" name="valor" id="id-valor" class="form-control"/>
		</div>
		<div class="form-group">
			<input type="submit" value="Salvar" class="btn btn-primary"/>
		</div>
	</form>

</tag:template>

