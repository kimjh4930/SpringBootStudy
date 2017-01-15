<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello Millky</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.7/dist/css/bootstrap.min.css">
<script src="/webjars/jQuery/3.1.1/dist/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.7/dist/js/bootstrap.min.js"></script>
</head>
<body>
	<c:out value="<xmp>" escapeXml="true"></c:out>
	<h2>Hello! ${name}</h2>
	<div>JSP version</div>

	<p>
		<button type="button" class="btn btn-lg btn-default">Default</button>
		<button type="button" class="btn btn-lg btn-primary">Primary</button>
		<button type="button" class="btn btn-lg btn-success">Success</button>
		<button type="button" class="btn btn-lg btn-info">Info</button>
		<button type="button" class="btn btn-lg btn-warning">Warning</button>
		<button type="button" class="btn btn-lg btn-danger">Danger</button>
		<button type="button" class="btn btn-lg btn-link">Link</button>
	</p>
	<p>
		<button type="button" class="btn btn-default">Default</button>
		<button type="button" class="btn btn-primary">Primary</button>
		<button type="button" class="btn btn-success">Success</button>
		<button type="button" class="btn btn-info">Info</button>
		<button type="button" class="btn btn-warning">Warning</button>
		<button type="button" class="btn btn-danger">Danger</button>
		<button type="button" class="btn btn-link">Link</button>
	</p>
	<p>
		<button type="button" class="btn btn-sm btn-default">Default</button>
		<button type="button" class="btn btn-sm btn-primary">Primary</button>
		<button type="button" class="btn btn-sm btn-success">Success</button>
		<button type="button" class="btn btn-sm btn-info">Info</button>
		<button type="button" class="btn btn-sm btn-warning">Warning</button>
		<button type="button" class="btn btn-sm btn-danger">Danger</button>
		<button type="button" class="btn btn-sm btn-link">Link</button>
	</p>
	<p>
		<button type="button" class="btn btn-xs btn-default">Default</button>
		<button type="button" class="btn btn-xs btn-primary">Primary</button>
		<button type="button" class="btn btn-xs btn-success">Success</button>
		<button type="button" class="btn btn-xs btn-info">Info</button>
		<button type="button" class="btn btn-xs btn-warning">Warning</button>
		<button type="button" class="btn btn-xs btn-danger">Danger</button>
		<button type="button" class="btn btn-xs btn-link">Link</button>
	</p>
</body>
</html>