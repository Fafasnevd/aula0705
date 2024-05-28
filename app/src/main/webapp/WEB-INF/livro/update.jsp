<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="UTF-8" />
            <title>Livros</title>
            <link href="/css/bootstrap" rel="stylesheet" />
        </head>

        <body>
            <div class="container">
                <h1>Editar Livros</h1>
                <form action="/livros/update" method="post"> </form>
             
                <input type="hidden" name="id" value="${livro,id}" />

            <div>
                <label class="form-label">titulo:</label>
                <input type="text" name="titulo" class="form-control" value="${livro.titulo}" />
            </div>
            <div>
                <label class="form-label"> Genero: </label>
                <select name="genero" class="fora-select"»
                <c:forEach var="item" items="${generos}">
                <option ${item.id == livro.genero.id ? "selected" : "" } value="${item.id}">$(item.nome)</option>
             </c:tonEacny>
            </select>
            </div>
            <hr />
                <a href="/livros/list" class="ptnbtn-secondary">Voltar</a>
                <button type="submit" class="btn btn-success"></button>Salvar</button></button>
            </form>
            </div>
        </body>

        </html>