package be.bstorm.exercices.taskmanager.servlets.tache;

import be.bstorm.exercices.taskmanager.models.Priorite;
import be.bstorm.exercices.taskmanager.models.TacheForm;
import be.bstorm.exercices.taskmanager.service.TacheService;
import be.bstorm.exercices.taskmanager.service.TacheServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.Duration;
import java.time.LocalDate;

@WebServlet("/tache/ajouter")
public class TacheAddServlet extends HttpServlet {

    private final TacheService service = TacheServiceImpl.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/tache/add-form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            String nom = req.getParameter("nom").trim();
            LocalDate deadline = LocalDate.parse( req.getParameter("deadline") );
            Priorite priorite = Priorite.valueOf( req.getParameter("priorite") );
            String description = req.getParameter("description");
            description = description == null ? description : description.trim();

            Duration dureeEstimee;
            String dureeParam = req.getParameter("dureeEstimee").trim();
            if( dureeParam.length() == 0  )
                dureeEstimee = null;
            else
                dureeEstimee = Duration.ofMinutes( Long.parseLong( dureeParam ) );

            if( nom.length() == 0 )
                throw new Exception("nom invalide");

            TacheForm form = new TacheForm(nom, deadline, priorite, description, dureeEstimee);
            service.add( form );

            resp.sendRedirect("/tache");
        }
        catch (Exception ex){ // gestion des erreurs simplifiée
            resp.sendError(400, ex.getMessage());
        }



    }
}
