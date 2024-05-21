<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Livros</title>
    </head>
    <body>
            <a href="/generos/insert">Novo Gênero</a>
            <table>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Genero</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="${livros}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nome}</td>
                        <td>${item.genero.nome}</td>
                            <a href="/livros/update?id=${item.id}">Editar</a>
                            <a href="/livros/delete?id=${item.id}">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>