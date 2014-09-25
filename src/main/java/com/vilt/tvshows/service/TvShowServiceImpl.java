package com.vilt.tvshows.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.vilt.tvshows.model.TvShow;
import com.vilt.tvshows.utils.Util;


@Service
public class TvShowServiceImpl implements TvShowService {

	private List<TvShow> tvShowList;
	private List<String> episodesList;
	
	
	public List<TvShow> getAllTvShows() {
		String tvshows[] = { "Game of Thrones", "House of cards", "The Wire", "Sopranos" };
		tvShowList =  new ArrayList<TvShow>();
		int i = 1;
		for (String s : tvshows) {
			TvShow tvshow = new TvShow(s, new ArrayList<String>(), i++);
			tvShowList.add(tvshow);
		}
		
		return tvShowList;
	}
	
	public List<String> getEpisodes(String tvshow_name, int last_episode){
		episodesList = new ArrayList<String>();
		int i = last_episode;
		int number_of_episodes = last_episode + 3;
		String episode_name = "";
		while( i < number_of_episodes ){
			episode_name = Util.RandomString(tvshow_name, 8);
			episodesList.add(episode_name);
			i++;
		}
		return episodesList; 
	}
}
