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
        <form action="confirm" method="post">
            <label for="content">値を入力してください: </label>
            <input name="content" type="text">
            <button type="submit">確認画面へ</button>
        </form>
    </body>
</html>
