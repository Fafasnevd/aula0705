<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Livro</title>
    </head>
    <body>
        <h1>Novo Livro</h1>
        <form action="/Livros/insert" method="post">
            <div>
                <label>Nome:</label>
                <input type="text" name="nome" />
            </div>
            <div>
                <label>Gênero</label>
                <select name="genero">
                    <c:forEach var="item" items="${generos}">
                        <option value="${item.id}">${item.nome}</option>
                    </c:forEach>

                </select>
            </div>
            <a href="/Livros/list">Voltar</a>
            <button type="submit">Salvar</button>
        </form>
    </body>
</html>

