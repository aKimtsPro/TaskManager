<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="be.bstorm.exercices.taskmanager.models.Tache" %>

<!DOCTYPE html>
<% List<Tache> taches = (List<Tache>) request.getAttribute("taches"); %>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/main.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">TaskManager</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="../index.jsp">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/tache">Mes tâches</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/tache/ajouter">Ajouter une tâche</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <h2> Liste des taches </h2>

        <ul>
            <% for (Tache tach : taches) { %>
            <li><%= tach.getNom() %> - <%= tach.getDeadline() %></li>
            <% } %>
        </ul>
    </div>


    <script src="/assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
