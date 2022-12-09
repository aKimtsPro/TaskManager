package be.bstorm.exercices.taskmanager.models;

import java.time.Duration;
import java.time.LocalDate;

public class TacheForm {

    private String nom;
    private LocalDate deadline;
    private Priorite priorite;
    private String description;
    private Duration dureeEstime;

    public TacheForm() {
    }

    public TacheForm(String nom, LocalDate deadline, Priorite priorite, String description, Duration dureeEstime) {
        this.nom = nom;
        this.deadline = deadline;
        this.priorite = priorite;
        this.description = description;
        this.dureeEstime = dureeEstime;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public LocalDate getDeadline() {
        return deadline;
    }

    public void setDeadline(LocalDate deadline) {
        this.deadline = deadline;
    }

    public Priorite getPriorite() {
        return priorite;
    }

    public void setPriorite(Priorite priorite) {
        this.priorite = priorite;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Duration getDureeEstime() {
        return dureeEstime;
    }

    public void setDureeEstime(Duration dureeEstime) {
        this.dureeEstime = dureeEstime;
    }
}
