package be.bstorm.exercices.taskmanager.service;

import be.bstorm.exercices.taskmanager.models.Tache;
import be.bstorm.exercices.taskmanager.models.TacheForm;

import java.util.ArrayList;
import java.util.List;

public class TacheServiceImpl implements TacheService {

    // region SINGLETON
    private static TacheServiceImpl instance;
    public static TacheServiceImpl getInstance(){
        return instance == null ? instance = new TacheServiceImpl() : instance;
    }
    private TacheServiceImpl() {
    }
    // endregion

    private final List<Tache> taches = new ArrayList<>();
    private int nextID = 1;

    @Override
    public void add(TacheForm form) {
        taches.add(
                new Tache(
                        nextID++,
                        form.getNom(),
                        form.getDeadline(),
                        form.getPriorite(),
                        form.getDescription(),
                        form.getDureeEstime()
                )
        );
    }

    @Override
    public List<Tache> getAll() {
        return new ArrayList<>(taches);
    }
}
