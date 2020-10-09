package com.trainer.trainermanagement.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.trainer.trainermanagement.model.Trainer;
import com.trainer.trainermanagement.repository.TrainerRepository;
import com.trainer.trainermanagement.service.TrainerService;

@Controller
public class TrainerController {

	
	@Autowired
	TrainerService service;
	
	@Autowired
	TrainerRepository trainerRepository;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcomemsg() {
		return "welcome";
	}

	@RequestMapping(value = "/addPage", method = RequestMethod.GET)
	public String addTrainer() {
		return "addPage";
	}

	@PostMapping(value="/addPage")
	public String add(@Valid@ModelAttribute("trainer") Trainer trainer, BindingResult result) {
		
		if (result.hasErrors()) {
			return "addPage";
		}

		service.addTrainer(trainer);
		return "welcome";
	}
	
	
	@RequestMapping(value = "/trainerList")
	public String listTrainers(ModelMap model) {
		
		 List<Trainer> trainers = trainerRepository.findAll();
		model.put("list", trainers);
		
		return "trainerList";
	}
	
	

	
//	@GetMapping("/editPage")
//	public String viewTrainerDetails(ModelMap model, @RequestParam long id) {
//
//		Trainer trainer = trainerRepository.findById(id).get();
//		model.put("trainer", trainer);
//
//		return "editPage";
//	}
//
//	@PostMapping("/editPage")
//	public String status( @RequestParam long id,@Valid Trainer trainer, BindingResult result) {
//		if (result.hasErrors()) {
//			return "editPage";
//		}
//		trainerRepository.save(trainer);
//		return "updated";
//
//	}
	
	@GetMapping("/editPage")
	public String viewApplicationDetails(ModelMap model, @RequestParam long id) {

		Trainer trainer = trainerRepository.findById(id).get();
		model.put("trainer", trainer);

		return "editPage";
	}

	@PostMapping("/editPage")
	public String status(HttpSession session, @RequestParam long id, @Valid Trainer trainer, BindingResult result) {
		if (result.hasErrors()) {
			return "/editPage";
		}
		trainerRepository.save(trainer);
		return "updated";

	}
	
	
	
	

}
