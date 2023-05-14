<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <% String title = (String)request.getAttribute("title"); %>
        <h1><strong><%= title %></strong></h1>
        <% String content = (String)session.getAttribute("content"); %>
        <p>「 <%= content %>」を登録しました。</p>
        <a href="new">入力画面に戻る</a>
    </body>
</html>
