<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/main.css">
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
                        <a class="nav-link" href="index.jsp">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="tache">Mes tâches</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="tache/ajouter">Ajouter une tâche</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <h1 class="display-1">TaskManager</h1>

    <h2>Gérez vos tâches</h2>

    <p>
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet corporis deserunt dignissimos
        doloremque ea esse eveniet facere hic id illo ipsam iste laboriosam laborum laudantium libero
        minima modi obcaecati, pariatur praesentium provident quas repudiandae saepe sed tenetur
        veniam voluptas voluptates.
    </p>

    <a href="hello-servlet">Hello Servlet</a>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>