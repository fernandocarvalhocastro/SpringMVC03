<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro</title>
</head>
<body>
<div class="container">

${produto.nome}


<h1>Cadastro de Cerveja</h1>
	<form method="post" action="cadastrar">
		<div class="form-group">
			<label for="nome">Nome:</label>
			<input type="text" name="nome" id="idNome" class="form-control" placeholder="Entre com o nome..." />
		</div>
		<div class="form-group">
			<label for="preco">Preco:</label>
			<input type="text" name="preco" id="idPreco" class="form-control" placeholder="Entre com o preço..." />
		</div>
		<div class="form-group">
			<label for="tipo">Tipo:</label>
			<input type="text" name="tipo" id="idTipo" class="form-control" placeholder="Entre com o tipo..." />
		</div>
		<div class="form-group">
			<input type="submit" value="Salvar"  class="btn btn-primary"/>
		</div>
	</form>
</div>	
	<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>