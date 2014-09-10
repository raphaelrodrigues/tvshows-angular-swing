package com.vilt.tvshows.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.vilt.tvshows.model.TvShow;
import com.vilt.tvshows.service.TvShowService;


@Controller
public class TvShowController {

	@Autowired
	private TvShowService tvShowService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView renderShowList() {
		
	    return new ModelAndView("tvshows", "tvshows", tvShowService.getAllTvShows());
	}
	
    @RequestMapping("/{tvshow}")
    public ModelAndView showTvShow(@PathVariable("tvshow") String tvshow) { 
        return new ModelAndView("tvshow", "tvshow", tvshow  ) ;
    }
	
	@RequestMapping(value = "/showList.json", method = RequestMethod.GET, produces="application/json")
	public @ResponseBody List<TvShow> tvShowList() {
		return tvShowService.getAllTvShows();
	}

}
