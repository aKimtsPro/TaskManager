package be.bstorm.exercices.taskmanager.servlets.tache;

import be.bstorm.exercices.taskmanager.service.TacheService;
import be.bstorm.exercices.taskmanager.service.TacheServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/tache")
public class TacheGetAllSevlet extends HttpServlet {

    private final TacheService service = TacheServiceImpl.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("taches", service.getAll());
        req.getRequestDispatcher("/tache/liste.jsp").forward(req, resp);
    }
}
