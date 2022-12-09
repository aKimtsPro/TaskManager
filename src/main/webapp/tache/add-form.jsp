<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <h1>Ajouter une tache</h1>

        <form action="/tache/ajouter" method="post">
            <div class="mb-3">
                <label for="in-nom" class="form-label">nom</label>
                <input type="text" class="form-control" name="nom" id="in-nom" aria-describedby="in-nom">
            </div>
            <div class="mb-3">
                <label for="in-deadline" class="form-label">deadline</label>
                <input type="date" class="form-control" name="deadline" id="in-deadline">
            </div>
            <div class="mb-3">
                <label for="in-priorite" class="form-label">priorite</label>
                <select type="date" class="form-select" name="priorite" id="in-priorite">
                    <option value="URGENT">URGENT</option>
                    <option value="PRIORITAIRE">PRIORITAIRE</option>
                    <option value="BASIC">BASIC</option>
                </select>
            </div>
            <div class="mb-3 form-check">
                <label for="id-description" class="form-label">votre description</label>
                <textarea class="form-control" placeholder="description" id="id-description" name="description" style="height: 100px">
                </textarea>
            </div>
            <div class="mb-3">
                <label for="in-duree" class="form-label">durée estimé</label>
                <input type="number" class="form-control" name="dureeEstimee" id="in-duree" placeholder="en minute">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

</body>
</html>
