package com.trainer.trainermanagement.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trainer.trainermanagement.model.Trainer;
import com.trainer.trainermanagement.repository.TrainerRepository;

@Service
public class TrainerService {

	@Autowired
	TrainerRepository trainerRepository;

	public void addTrainer(Trainer trainer) {
		trainerRepository.save(trainer);

	}

	public List<Trainer> getAllTrainers() {
		List<Trainer> TrainerList = new ArrayList<>();
		TrainerList = trainerRepository.findAll();
		return TrainerList;
	}

	public Trainer getTrainerById(Long id) {
		return trainerRepository.findById(id).orElse(null);
	}

	public void deleteTrainerById(long id) {
		trainerRepository.deleteById(id);
	}

}
