<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>


<tag:template title="Cadastro de Cerveja">

<jsp:attribute name="scripts">
	<script src="teste"></script>
</jsp:attribute>
<jsp:body>
		<h1>Cadastro de Cerveja</h1>
		<form method="post" action="cadastrar">
			<div class="form-group">
				<label for="nome">Nome:</label> <input type="text" name="nome"
					id="idNome" class="form-control" placeholder="Entre com o nome..." />
			</div>
			<div class="form-group">
				<label for="preco">Preco:</label> <input type="text" name="preco"
					id="idPreco" class="form-control"
					placeholder="Entre com o preço..." />
			</div>
			<div class="form-group">
				<label for="tipo">Tipo:</label> <input type="text" name="tipo"
					id="idTipo" class="form-control" placeholder="Entre com o tipo..." />
			</div>
			<div class="form-group">
				<input type="submit" value="Salvar" class="btn btn-primary" />
			</div>
		</form>
		<div class="${produto==null ?'':'alert alert-success'}">
			${produto.nome} ${produto==null ?'':' - cadastrado com sucesso!'}
		</div>
</jsp:body>
</tag:template>