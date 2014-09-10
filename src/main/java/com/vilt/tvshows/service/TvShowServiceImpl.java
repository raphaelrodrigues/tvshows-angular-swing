package com.vilt.tvshows.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.vilt.tvshows.model.TvShow;


@Service
public class TvShowServiceImpl implements TvShowService {

	private List<TvShow> tvShowList;
	
	
	public List<TvShow> getAllTvShows() {
		String tvshows[] = { "Game of Thrones", "House of cards", "The Wire", "ABC" };
		tvShowList =  new ArrayList<TvShow>();
		int i = 1;
		for (String s : tvshows) {
			TvShow tvshow = new TvShow(s, new ArrayList<String>(), i++);
			tvShowList.add(tvshow);
		}
		
		return tvShowList;
	}
}
