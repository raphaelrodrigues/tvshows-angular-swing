package com.vilt.tvshows.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vilt.tvshows.service.PlayerService;

@Controller
public class PlayerController {
	
	@Autowired
	private PlayerService playerService;
	
	@RequestMapping("/players")
    public ModelAndView showPlayers() throws IOException {
        return new ModelAndView("players/players", "players", playerService.getAll() ) ;
    }
}
