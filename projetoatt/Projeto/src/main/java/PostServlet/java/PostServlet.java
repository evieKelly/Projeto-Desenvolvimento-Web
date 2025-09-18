package PostServlet.java;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

import models.Post;

@WebServlet("/post")
public class PostServlet extends HttpServlet {
    @SuppressWarnings("unchecked")
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String conteudo = request.getParameter("conteudo");

        // Usuário fixo por enquanto, simulação de funcionamento. Habilitar login depois
        String usuario = "@usuariofit";

        HttpSession session = request.getSession();
        List<Post> posts = (List<Post>) session.getAttribute("posts");

        if (posts == null) {
            posts = new ArrayList<>();
            session.setAttribute("posts", posts);
        }

        posts.add(0, new Post(usuario, conteudo));
        response.sendRedirect("index.jsp");
    }
}
