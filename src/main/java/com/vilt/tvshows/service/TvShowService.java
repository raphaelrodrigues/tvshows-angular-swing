package com.vilt.tvshows.service;

import java.util.List;

import com.vilt.tvshows.model.TvShow;


public interface TvShowService {

	public List<TvShow> getAllTvShows();
	public List<String> getEpisodes(String tvshow_name, int last_episode);

}