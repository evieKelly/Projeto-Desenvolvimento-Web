<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Post" %>
<%
    List<Post> posts = (List<Post>) session.getAttribute("posts");
    if (posts == null) {
        posts = new ArrayList<>();
        session.setAttribute("posts", posts);
    }
%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Receitas</title>
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

  <main class="layout">
    <!-- coluna  da esquerda -->
    <aside class="sidebar">
      <h3>Meu Perfil</h3>
      <p><strong>@usuariofit</strong></p>
      <p>Amante de receitas fitness 🍎</p>
    </aside>

    <!-- Coluna central -->
    <section class="feed">
      <!-- caixinha central de postagem -->
      <div class="post-form">
        <form action="post" method="post">
          <textarea name="conteudo" placeholder="Compartilhe suas ideias..." required></textarea>
          <button type="submit">Postar</button>
        </form>
      </div>

      <!-- Lista de posts -->
 <%
    for (Post p : posts) {
%>
    <div class="post">
      <p><strong><%= p.getUsuario() %></strong></p>
      <p><%= p.getConteudo() %></p>
    </div>
<%
    }
%>

    </section>

    <!-- Coluna direita -->
    <aside class="trending">
      <h3>Receitas em Alta 🔥</h3>
      <ul>
        <li>Panqueca de Aveia</li>
        <li>Suco Detox Verde</li>
        <li>Bolo Integral de Cenoura</li>
      </ul>
    </aside>
  </main>

  <footer class="footer">
    <p>© 2025 Receitas</p>
  </footer>
</body>
</html>
