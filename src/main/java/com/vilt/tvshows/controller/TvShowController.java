package com.vilt.tvshows.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.vilt.tvshows.model.TvShow;
import com.vilt.tvshows.service.TraktAdapterService;
import com.vilt.tvshows.service.TvShowService;


@Controller
public class TvShowController {

	@Autowired
	private TvShowService tvShowService;
	
	@Autowired
	private TraktAdapterService traktService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView renderShowList() {
		
	    return new ModelAndView("tvshows", "tvshows", tvShowService.getAllTvShows());
	}
	
    @RequestMapping("/{tvshow}")
    public ModelAndView showTvShow(@PathVariable("tvshow") String tvshow) throws IOException {
    	
        return new ModelAndView("tvshow", "tvshow", tvshow  ) ;
    }
    
    
    @RequestMapping("/reddit")
    public ModelAndView redditTvShow() { 
        return new ModelAndView("reddit_tvshows", "reddit_tvshow", "reddit_tvshowasasas"  ) ;
    }
    
    @RequestMapping("/tables")
    public ModelAndView tablesTvShow() { 
        return new ModelAndView("tvshowTable", "reddit_tvshow", "reddit_tvshowasasas"  ) ;
    }
	
    //JSON 
	@RequestMapping(value = "/showList.json", method = RequestMethod.GET, produces="application/json")
	public @ResponseBody List<TvShow> tvShowList() {
		return tvShowService.getAllTvShows();
	}
	
	@RequestMapping(value = "/{tvshow}/episodes.json", method = RequestMethod.GET, produces="application/json")
	public @ResponseBody List<String> episodesList(@PathVariable("tvshow") String tvshow) {
		return tvShowService.getEpisodes(tvshow, 3);
	}
	
	
	@RequestMapping(value = "/{tvshow}/episodes1.json", method = RequestMethod.GET, produces="application/json")
	public @ResponseBody String episodesList1(@PathVariable("tvshow") String tvshow) throws IOException {
		return traktService.getEpisodeList(tvshow, "1");
	}
	
}
