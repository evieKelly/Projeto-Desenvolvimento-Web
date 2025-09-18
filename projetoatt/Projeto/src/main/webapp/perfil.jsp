<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Post" %>
<%
    // Recupera posts da sessão
    List<Post> posts = (List<Post>) session.getAttribute("posts");
%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Perfil do Usuário</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header class="header">
    <h1>Receitas</h1>
    <nav>
      <a href="index.jsp">Página Inicial</a>
      <a href="perfil.jsp">Perfil</a>
    </nav>
  </header>

  <main>
    <div class="perfil-container">
      <!-- Cabeçalho do perfil -->
      <div class="perfil-header">
        <h2>@usuariofit</h2>
        <p>Amante de receitas fitness 🍎</p>
      </div>

      <!-- Lista de posts do usuário -->
      <div class="perfil-posts">
        <h3>Minhas Receitas</h3>
        <%
            if (posts != null) {
                for (Post p : posts) {
                    if ("@usuariofit".equals(p.getUsuario())) {
        %>
                    <div class="post">
                      <strong><%= p.getUsuario() %></strong>
                      <p><%= p.getConteudo() %></p>
                    </div>
        <%
                    }
                }
            }
        %>
      </div>
    </div>
  </main>

  <footer class="footer">
    <p>© 2025 Receitas</p>
  </footer>
</b
