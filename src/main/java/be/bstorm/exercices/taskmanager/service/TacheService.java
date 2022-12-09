package be.bstorm.exercices.taskmanager.service;

import be.bstorm.exercices.taskmanager.models.Tache;
import be.bstorm.exercices.taskmanager.models.TacheForm;

import java.util.List;

public interface TacheService {

    void add(TacheForm form);

    List<Tache> getAll();

}
