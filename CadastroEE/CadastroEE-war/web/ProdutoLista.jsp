<%-- 
    Document   : ProdutoLista
    Created on : Aug 21, 2023, 4:33:08 PM
    Author     : Mari
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Produtos</title>
    </head>
    <body>
        <h1>Listagem de Produtos</h1>

    <!-- Link para abrir o formulário de inclusão -->
    <a href="ServletProdutoFC?acao=formIncluir">Novo Produto</a>
    
    <h2>Count: ${listaProdutosCount}</h2>
    
    <li>
    <c:forEach items="${listaProdutos}" var="produto">
        <ul>${produto.nome}</ul>
    </c:forEach>
    </li>
    
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Nome</th>
          <th>Quantidade</th>
          <th>Preço de Venda</th>
          <th>Opções</th>
        </tr>
      </thead>

      <tbody>
        <!-- Dados da tabela serão adicionados aqui -->
        <c:forEach items="${listaProdutos}" var="produto">
          <tr>
            <td>${produto.idProduto}</td>
            <td>${produto.nome}</td>
            <td>${produto.quantidade}</td>
            <td>${produto.precoVenda}</td>

            <!-- Links para alteração e exclusão -->
            <td><a href="ServletProdutoFC?acao=formAlterar&idProduto=${produto.idProduto}">Alterar</a> | 
                <a href="ServletProdutoFC?acao=excluir&idProduto=${produto.idProduto}">Excluir</a></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </body>
</html>
