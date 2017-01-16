<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pen - What You See Is What You Get (WYSIWYG)</title>

<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.7/dist/css/bootstrap.min.css">
<link href="/webjars/summernote/0.8.2/dist/summernote.css"
	rel="stylesheet">

<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

html {
	border-top: 10px #1abf89 solid;
}

body {
	width: 750px;
	margin: 0 auto;
	padding: 7% 20px 20px;
}

@media all and (max-width:1024px) {
	body, pre a {
		width: 85%;
	}
}

small {
	color: #999;
}

#toolbar {
	margin-bottom: 1em;
	position: fixed;
	left: 20px;
	margin-top: 5px;
}

#toolbar [class^="icon-"]:before, #toolbar [class*=" icon-"]:before {
	font-family: 'pen'
}

#back {
	color: #1abf89;
	cursor: pointer;
}

#hinted {
	color: #1abf89;
	cursor: pointer;
}

#hinted.disabled {
	color: #666;
}

#hinted:before {
	content: '\e816';
}
</style>


</head>
<body>

	<div id="toolbar">
		<span id="back" class="icon-back" onclick="history.back();">돌아가기</span><br>
		<span id="hinted" class="icon-pre disabled"
			title="Toggle Markdown Hints"></span>
	</div>

	<c:if test="${FormType eq write}"><c:url var="actionUrl" value="/post/write"/></c:if>
	<c:if test="${FormType eq edit}"><c:url var="actionUrl" value="/post/${post.id}/edit"/></c:if>
	

	<form id="form" action="${actionUrl}" method="post">

		<input type="text" name="title" placeholder="Title" value="${post.title}"
			style="height: 70px; width: 100%; font-size: 55px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 1px; outline-style: none; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 800;">
		<input type="text" name="subTitle" placeholder="SubTitle" value="${post.subTitle}"
			style="height: 70px; width: 100%; font-size: 35px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 1px; outline-style: none; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 800;">

		<input type="hidden" name="content" id="content" value="${post.content }">

		<hr style="margin-top: 2px; border-top: 1px solid #999;">

		<div id="editor"></div>

		<button type="submit" class="btn btn-primary btn-lg btn-block">저장</button>

	</form>

	<p class="text-muted">
		Powered By <a href="http://millky.com">Millky</a> | WYSIWYG Editor by
		<a href="https://github.com/sofish/pen">Pen Editor</a>
	</p>

	<script src="/webjars/jQuery/3.1.1/dist/jquery.min.js"></script>
	<script src="/webjars/bootstrap/3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="/webjars/summernote/0.8.2/dist/summernote.js"></script>
	<script type="text/javascript">
		// config
		var options = {
			toolbar : document.getElementById('custom-toolbar'),
			editor : document.querySelector('[data-toggle="pen"]')
		};
		// create editor

		$('#editor').summernote({
			height : 300, // set editor height
			minHeight : null, // set minimum height of editor
			maxHeight : null, // set maximum height of editor
			focus : true
		// set focus to editable area after initializing summernote
		});

		$('#form').on('submit', function() {
			var content = $('#editor').summernote('code');
			$('#content').val(content);
		});
		
		var content = $('#content').val();
		$('#editor').summernote('code', content);

		// 바디의 마진을 가지고 와서. 툴바의 좌측으로.
	</script>
</body>
</html>