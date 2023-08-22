<%-- 
    Document   : ProdutoDados
    Created on : Aug 21, 2023, 5:14:12 PM
    Author     : Mari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Dados do Produto</h1>
        <form action="ServletProdutoFC" method="post">
            <input type="hidden" name="acao" value="${produto == null ? 'incluir' : 'alterar'}">
            <input type="hidden" name="idProduto" value="${produto != null ? produto.idProduto : ''}">
            <label for="nome">Nome:</label>
            <input type="text" name="nome" id="nome" value="${produto != null ? produto.nome : ''}">
            <br>
            <label for="quantidade">Quantidade:</label>
            <input type="number" name="quantidade" id="quantidade" value="${produto != null ? produto.quantidade : ''}">
            <br>
            <label for="precoVenda">Preço de Venda:</label>
            <input type="number" name="precoVenda" id="precoVenda" min="0" step="0.01" value="${produto != null ? produto.precoVenda : ''}">
            <br>
            <button type="submit">${produto == null ? 'Adicionar' : 'Alterar'} Produto</button>
        </form>
    </body>
</html>
