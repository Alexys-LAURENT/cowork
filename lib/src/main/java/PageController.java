

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class PageController
 */
@WebServlet({"/accueil", "/nos-espaces"})
public class PageController extends HttpServlet {
    private static final long serialVersionUID = 2L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getServletPath(); // Obtenir l'URL demandée
        String page;
        System.out.println("URI reçue : " + uri);
        // Ajuster les chemins pour qu'ils pointent correctement vers les JSP
        switch (uri) {
            case "/accueil":
                page = "/accueil.jsp";
                break;
            case "/nos-espaces":
                page = "/nos-espaces.jsp";
                break;
            default:
                page = "/404.jsp"; // Page par défaut ou erreur
        }

        // Définir les attributs pour le layout
        request.setAttribute("pageContent", page);
        request.getRequestDispatcher("/layout.jsp").forward(request, response);
    }
}
