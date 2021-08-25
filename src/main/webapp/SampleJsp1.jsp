<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ServletのGet</title>
<script type="text/javascript">
	function exec() {
		location.href = "/loginTestes/SampleJava1?param1="
				+ document.getElementById("param1").value + "&param2="
				+ document.getElementById("param2").value;
	}
</script>
</head>
<body>
	<a href="/loginTestes/SampleJava1?param1=パラメータも&param2=受け取れるよ">リンクはこちら</a>
	<br />
	<br />
	param1<input type="text" id="param1" />
	<br/>
	param2<input type="text" id="param2" />
	<input type="button" value="実行" onclick="exec()">
</body>
</html>

