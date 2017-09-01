<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="title" required="true" %>
<%@ attribute name="scripts" fragment="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Spring MVC ${title}</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css"/>"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="<c:url value="/"></c:url>">Home</a>
    <a class="navbar-brand" href="<c:url value="/cerveja/cadastro"></c:url>">Cadastro</a>
    <a class="navbar-brand" href="<c:url value="/cerveja/listar"></c:url>">Listar</a>
  </nav>
<div class="container">
<jsp:doBody />
</div>
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<!-- JSP INVOKE é usado para outras paginas poderem adicionar scripts na pagina. 
O nome é indiferente, você só deve seguir em todas outras paginas -->
<jsp:invoke fragment="scripts"></jsp:invoke>
</body>
</html>
